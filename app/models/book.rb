class Book < ActiveRecord::Base
    belongs_to :inshelve
    has_many :reviews
    has_many :users, through: :reviews
end