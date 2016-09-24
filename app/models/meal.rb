class Meal < ApplicationRecord
  belongs_to :program
  has_many :menu_items

  def date
    start_time.strftime("%a, %B %d, %Y")
  end

  def time_range
    "#{time(start_time)} - #{time(end_time)}"
  end

  def time(t)
    t.strftime("%l:%M %P")
  end
end
