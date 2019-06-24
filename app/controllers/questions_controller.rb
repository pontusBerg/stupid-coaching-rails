class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @image = "https://images.pexels.com/photos/1618044/pexels-photo-1618044.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    @question = params[:question]
    @coach_answer = "I don't care, get dressed and go to work!"
      if @question == "I am going to work"
        @coach_answer = "Great!"
        @image = "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=format\%2Ccompress&cs=tinysrgb&dpr=2&h=750&w=1260"
      elsif @question.include? "?"
        @coach_answer = "Silly question, get dressed and go to work!"
      else
        @coach_answer = "I don't care, get dressed and go to work!"
      end
  end
end
