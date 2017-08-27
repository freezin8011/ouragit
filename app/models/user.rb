class User < ActiveRecord::Base
  
 
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Post 와 1대 다 관계 지정
  has_many :posts, dependent: :destroy
end
