require 'spec_helper'

describe Redk::Smdr::Matcher do
  it 'matches a line' do
    matched_line = Redk::Smdr::Matcher.match(test_log_line, Redk::Smdr::Matcher::Extended.level_2)
    expect(matched_line).not_to be nil
    expect(matched_line[:date]).to eq "10/30"
    expect(matched_line[:called_party]).to eq "7008"


  end
end
