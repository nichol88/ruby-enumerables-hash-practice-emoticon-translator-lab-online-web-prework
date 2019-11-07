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


  japanese_emoticons = hash.collect{ |k,v|
    puts "#{k} :: #{v}"
    result[:get_meaning][k] = v[1]
  }

  #result[:get_meaning] = japanese_emoticons

  result
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning
  # code goes here
end
