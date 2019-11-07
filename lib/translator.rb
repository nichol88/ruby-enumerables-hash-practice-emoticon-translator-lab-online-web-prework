# require modules here
require "yaml"

def load_library(path)
  # code goes here
  hash = YAML.load_file(path)
  #pp(hash)

  result = {
    :get_meaning => {},
    :get_emoticon => {}
  }

  hash.each{ |description, emojis|

    if !result[:get_meaning][emojis[1]]
      result[:get_meaning][emojis[1]] = description
    end

    if !result[:get_emoticon][emojis[0]]
      result[:get_emoticon][emojis[0]] = emojis[1]
    end
  }
=begin
  hash.each{ |description, emojis|
    if !result[:get_meaning][emojis[1]]
      result[:get_meaning][emojis[1]] = {}
    end
  }
=end

  puts result
  result
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning
  # code goes here
end
