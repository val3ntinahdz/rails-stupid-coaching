class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
      if your_message == "I am going to work right now!"
        return "Great"
      elsif your_message.end_with?("?")
        return "Silly question, get dressed and go to work!"
      else
        return "i don't care, get dressed and get to work!"
      end
    end
  end
