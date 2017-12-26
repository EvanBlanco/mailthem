class Email < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true
   #validates :username, format: {with. /regex/ }
end
