# require modules here
require 'pry'
require 'yaml'


def load_library(path)
  # code goes here
  YAML.load_file(path)
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
  #binding.pry
end

def get_english_meaning
  # code goes here
end
