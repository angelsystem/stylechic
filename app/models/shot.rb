class Shot < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments
  belongs_to :category
  has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
