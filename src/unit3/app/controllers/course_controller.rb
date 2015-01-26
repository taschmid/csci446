require 'date'

class CourseController < ApplicationController
  def announce
  	@date = Time.new
  	@currentDate = @date.strftime('%a %d %b %Y')
  end

  def eval
  end
end
