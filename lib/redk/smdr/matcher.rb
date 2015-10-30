module Redk::Smdr::Matcher
  require "redk/smdr/matcher/extended"

  def self.match(line, matcher)
    data = {}
    matcher.each do |key, value|
      data[key] = line[value[0]..value[1]].strip
    end
    data
  end
end
