class Post < ActiveRecord::Base

    belongs_to :user
    
    has_many :replies, dependent: :destroy
    
    def self.search(search)
        where("title LIKE ?", "%#{search}%") 
    end
end
