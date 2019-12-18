class Language < ApplicationRecord
  belongs_to :user, optional: true
  has_many   :snippets, dependent: :destroy
  
  validates :name, presence: true
  validates :user_id, presence: true
end
