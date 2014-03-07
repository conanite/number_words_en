# -*- coding: utf-8 -*-

require 'spec_helper'
require 'i18n'
require 'number_words_en'
require 'number_words/core_ext'


describe NumberWordsEn do
  def expect_words n, txt
    expect(n.to_words).to eq txt
  end

  before { I18n.locale = :en }

  it "should translate numbers into english" do
    expect_words 0, "zero"
    expect_words 1, "one"
    expect_words 2, "two"
    expect_words 10, "ten"
    expect_words 12, "twelve"
    expect_words 18, "eighteen"
    expect_words 20, "twenty"
    expect_words 21, "twenty one"
    expect_words 22, "twenty two"
    expect_words 31, "thirty one"
    expect_words 33, "thirty three"
    expect_words 44, "forty four"
    expect_words 55, "fifty five"
    expect_words 66, "sixty six"
    expect_words 70, "seventy"
    expect_words 71, "seventy one"
    expect_words 72, "seventy two"
    expect_words 80, "eighty"
    expect_words 81, "eighty one"
    expect_words 90, "ninety"
    expect_words 99, "ninety nine"
    expect_words 100, "one hundred"
    expect_words 101, "one hundred and one"
    expect_words 110, "one hundred and ten"
    expect_words 111, "one hundred and eleven"
    expect_words 119, "one hundred and nineteen"
    expect_words 120, "one hundred and twenty"
    expect_words 185, "one hundred and eighty five"
    expect_words 300, "three hundred"
    expect_words 301, "three hundred and one"
    expect_words 999, "nine hundred and ninety nine"
    expect_words 1000, "one thousand"
    expect_words 1001, "one thousand and one"
    expect_words 1002, "one thousand and two"
    expect_words 1095, "one thousand and ninety five"
    expect_words 1102, "one thousand one hundred and two"
    expect_words 1199, "one thousand one hundred and ninety nine"
    expect_words 1234, "one thousand two hundred and thirty four"
    expect_words 2001, "two thousand and one"
    expect_words 12001, "twelve thousand and one"
    expect_words 12345, "twelve thousand three hundred and forty five"
    expect_words 12500, "twelve thousand five hundred"
    expect_words 123456, "one hundred and twenty three thousand four hundred and fifty six"
    expect_words 1234567, "one million two hundred and thirty four thousand five hundred and sixty seven"
    expect_words 9999999, "nine million nine hundred and ninety nine thousand nine hundred and ninety nine"
    expect_words 12345678, "twelve million three hundred and forty five thousand six hundred and seventy eight"
    expect_words 999999999, "nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine"
    expect_words 999999999999, "nine hundred and ninety nine billion nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine"
  end
end
