class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   # :recoverable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :follows
  has_many :communities, through: :follows
  acts_as_voter

  enum role: [:user, :moderator, :admin]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end
  
  def reputation
    result = 0
    self.get_voted(Post).each do |post|
      result += post.get_upvotes(vote_scoop: 'reputation').sum(:vote_weight)
      result += post.get_downvotes(vote_scoop: 'reputation').sum(:vote_weight)
    end
    result
  end
end
