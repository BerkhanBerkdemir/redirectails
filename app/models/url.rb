class Url < ApplicationRecord
  validates :url, presence: true
  validates :url_id, presence: true,
                     uniqueness: { case_sensitive: true }
  validates :status, presence: true, inclusion: [true, false]
end
