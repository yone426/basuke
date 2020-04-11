class Event < ApplicationRecord
  validates :title, :body, :start_date, :end_date,presence: true

end
