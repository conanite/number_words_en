require "number_words"
require "number_words_en/version"
require "yaml"

module NumberWordsEn
  WORDS = YAML::load File.read File.expand_path("../words.yml", __FILE__)

  class English < NumberWords::Base
    THOUSANDS = ["", "thousand", "million", "billion"]

    def int_to_words int, options={ }
      case int
      when 0; "zero"
      else
        join_thousands THOUSANDS, split_by_thousands(int)
      end
    end

    def hundreds_to_words int
      h = int / 100
      t = int % 100
      if t == 0
        case h;
        when 0; "zero";
        when 1; "one hundred";
        else "#{tens_to_words h} hundred"
        end
      else
        h == 0 ? "#{tens_to_words t}" : "#{tens_to_words h} hundred and #{tens_to_words t}"
      end
    end

    def tens_to_words i
      if i < 20
        WORDS["numbers"]["initial"][i]
      else
        tens = WORDS["numbers"]["tens"][i / 10]
        "#{tens} #{tens_to_words(i % 10)}"
      end
    end

    def join_thousands names, amounts
      working = amounts.zip(names)
      working.delete_if { |amount, name| amount == 0 }

      working = working.map { |amount, name|
        [hundreds_to_words(amount), name]
      }

      if amounts[0] > 0 && amounts[0] < 100 && amounts.size > 1
        huns = working.shift
        working.unshift "and"
        working.unshift huns
      end

      working.reverse.flatten.join(' ')
    end
  end

  NumberWords.add_handler :en, English.new
end
