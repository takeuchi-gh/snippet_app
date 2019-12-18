class Snippet < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :language, optional: true
  
  validates :title, presence: true
  validates :code, presence: true
  validates :language_id, presence: true
end
