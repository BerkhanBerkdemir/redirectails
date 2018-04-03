class Url < ApplicationRecord
  validates :url, presence: true
  validates :url_id, presence: true
  validates :status, presence: true
end
