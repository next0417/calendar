class Calendar < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :start_time, presence: true
end
