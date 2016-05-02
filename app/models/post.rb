class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

<<<<<<< HEAD
  after_create :create_vote

=======
>>>>>>> 7d3e0e4ef90da9e587ffffba22294d2c94d6554c
  default_scope { order('rank DESC') }

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value)
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / 1.day.seconds
<<<<<<< HEAD
     new_rank = points + age_in_days
     update_attribute(:rank, new_rank)
   end

   private

   def create_vote
     user.votes.create[value: 1, post: self]
   end
=======
    new_rank = points + age_in_days
    update_attribute(:rank, new_rank)
  end
>>>>>>> 7d3e0e4ef90da9e587ffffba22294d2c94d6554c
end
