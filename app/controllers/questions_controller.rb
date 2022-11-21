class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    answer = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    @answer = ''
    if @question == 'I am going to work'
      @answer = answer[0]
    elsif @question.ends_with?("?")
      @answer = answer[1]
    else
      @answer = answer[2]
    end
  end
end
