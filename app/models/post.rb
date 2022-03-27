class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders] 

  belongs_to :community
  belongs_to :user
  has_one :link
  has_one :topic
  has_many :comments
  acts_as_votable

  def self.search(query)
    if query
      where('title LIKE :query', query: "%#{query}%")
    else 
      all
    end
  end

  def normalize_friendly_id(string)
    string.gsub(/\s+/, '-').gsub(/[^a-aZ-Z0-9أ-ي-]*/, '')
  end
  
end
