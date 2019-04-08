# require modules here
require 'pry'
require 'yaml'


def load_library(path)
  # code goes here
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(path)
  library.each do |key, value|
    #binding.pry
    new_hash["get_meaning"][value[1]] = key
    new_hash["get_emoticon"][value[0]] = value[1]
    end
  new_hash
  #binding.pry
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path)
  library.each do |key, value|
    if value[0] == emoticon
      return value[1]
    end
  end
  "Sorry, that emoticon was not found"
  #binding.pry
end

def get_english_meaning(path, emoticon)
  # code goes here
  library = load_library(path)
  library.each do |key, value|
    if value[1] == emoticon
      return key
    end
  end
  "Sorry, that emoticon was not found"

end
