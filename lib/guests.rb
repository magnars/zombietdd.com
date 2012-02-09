# -*- coding: utf-8 -*-
Guest = Struct.new(:name, :twitterId)

class Guests
  def self.cjno
    Guest.new "Christian Johansen", "@cjno"
  end

  def self.jhannes
    Guest.new "Johannes Brodwall", "@jhannes"
  end

  def self.cia_audience
    Guest.new "120 publikummere på CiA", ""
  end
end
