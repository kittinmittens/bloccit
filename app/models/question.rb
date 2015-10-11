class Question < ActiveRecord::Base
    has_many :resolved, dependent: :destroy
end
