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
    description => emoticons[1]
  }
  result
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning
  # code goes here
end
