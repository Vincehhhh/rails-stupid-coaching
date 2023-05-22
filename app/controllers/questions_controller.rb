class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # TODO: return coach answer to your_message
    # get rid of  leading and trailing whitespaces :
    @question = params[:question]
    @question.strip!
    if @question.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = "Great !"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
