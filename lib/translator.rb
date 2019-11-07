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

  result = hash.map { |description, emoticons|
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
