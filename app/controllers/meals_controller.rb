class MealsController < ApplicationController
  def create
    meal = Meal.create!(description: description, start_time: start_time, end_time: end_time, program: program)
    redirect_to user_path(current_user)
  end

  private

  def program
    Program.find(params["program_id"])
  end

  def description
    params["meal"]["description"]
  end

  def start_time
    datetime("start_time")
  end

  def end_time
    datetime("end_time")
  end

  def datetime(f)
    Time.zone = "Chicago/America"
    Time.zone.local(year(f), month(f), day(f), hour(f), minute(f))
  end

  %i(year month day hour minute).each_with_index do |method_name, i|
    define_method(method_name) do |field|
      params["meal"]["#{field}(#{i+1}i)"].to_i
    end
  end
end
