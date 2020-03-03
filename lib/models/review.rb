class Review < ActiveRecord::Base
has_many :movies
has_many :users
end