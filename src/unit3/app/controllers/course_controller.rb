require 'date'

class CourseController < ApplicationController
  def announce
  	@date = Time.new
  	@currentDate = @date.strftime('%a %d %b %Y')
  	@scores = false
  end

  def eval
  	@evaluation = Hash["Participation" => "5%", "Homework" => "45%", "Exams" => "50%"]
  end

  def scores
  	redirect_to course_announce_path, notice: "No scores available yet"
  end
end
