class Photo < ActiveRecord::Base
  validates :external_id, presence: true
  validates :search_term, presence: true
end
