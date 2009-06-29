require 'rss'
require 'rubygems'
require 'eventful'
require 'mash'

class RssListener

  def initialize(feed)
    @feed_url = feed
    @known_items = {}
  end

  def self.default_cutoff
    Time.now - 14400
  end

  def listen(sleep_time = 90, cutoff = RssListener.default_cutoff , &block)
    @cutoff = cutoff

    loop do
      content = ""
      open(@feed_url) do |s|
        content = s.read
      end

      rss = RSS::Parser.parse(content, false) || Mash.new(:items => [])
      rss.items.each do |item|
        if noteworthy?(item)
          yield item
          remember(item)
        end

      end
      sleep(sleep_time)
    end
    true
  end

  def noteworthy?(item)
    !heard_of?(item) && item.pubDate > @cutoff
  end

  def heard_of?(item)
    identity = get_identity(item)
    @known_items.has_key?(identity)
  end

  def remember(item)
    identity = get_identity(item)
    @known_items[identity] = true
  end

  def get_identity(item)
    if item.respond_to?(:guid)
      return item.guid.content || item.title
    else
      return item.title
    end
  end



end
