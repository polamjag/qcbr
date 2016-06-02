# -*- coding: utf-8 -*-

require 'spec_helper'

describe Qcbr do
  it 'has a version number' do
    expect(Qcbr::VERSION).not_to be nil
  end

  it 'can encode string to specified format' do
    expect(Qcbr.encode_text('hogeあ亜👽').unpack('h*')).to eq ['00:00:00:68:00:00:00:6f:00:00:00:67:00:00:00:65:00:00:30:42:00:00:4e:9c:00:01:f4:7d'.gsub(':', '')]
  end
end
