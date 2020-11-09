class QuestionsController < ApplicationController
  def ask
    @ask = params[:ask]
  end

  def answer
    if params[:ask]
      if params[:ask] == 'I am going to work right now!'
        return @answer = 'Great!'
      elsif "params[:ask]".include? '?'
        return @answer = 'Silly question, get dressed and go to work!'
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
