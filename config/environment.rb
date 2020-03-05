require 'bundler/setup'
require_relative '../data/bmHash.rb'
Bundler.require

require_all 'lib'
require_all 'helper_functions'
require_all 'lib/models' 

ActiveRecord::Base.logger = nil

# binding.pry