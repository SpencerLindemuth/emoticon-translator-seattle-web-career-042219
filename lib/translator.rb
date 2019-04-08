# require modules here
require 'pry'
require 'yaml'


def load_library
  # code goes here
  YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon
  # code goes here
  load_library
  binding.pry
end

def get_english_meaning
  # code goes here
end
