class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?('?')
      @reply = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @reply = 'Great!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
