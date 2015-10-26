class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(your_message)
  if your_message.end_with?("?")
    @answer = "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    @answer = "I don't care, get dressed and go to work!"
  end
end

end
