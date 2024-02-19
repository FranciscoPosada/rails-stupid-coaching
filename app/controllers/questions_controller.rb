class QuestionsController < ApplicationController
  STOP_MESSAGE = 'I am going to work'

  def ask
  end

  def answer
    @question = params[:question]
    @answer =
      if @question == STOP_MESSAGE
        'Great, good luck!'
      elsif @question.include?('?')
        'Silly question, get dressed and go to work!'
      else
        'I dont care, get dressed and go to work!'
      end
  end
end
