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

  hash.each { |description, emoticons|
    if !result[:get_meaning][description]
      result[:get_meaning][description] = {}
    end
    result[:get_meaning][description] = emoticons[1]
    puts result[:get_meaning][description]
  }

  puts result
  result
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning
  # code goes here
end
