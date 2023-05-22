class QuestionsController < ApplicationController
  def ask
    @user_messege = params[:ask]
  end

  def answer
    coach_answer(user_messege)
    stop_message = 'I am going to work'
    coach_answer = ''
    if user_messege == stop_message || user_messege == stop_message.upcase
      coach_answer = 'Great!'
    elsif user_messege.end_with?("?")
      coach_answer = 'Silly question, get dressed and go to work!'
    else
      coach_answer = "I don't care, get dressed and go to work!"
    end
    puts coach_answer
    puts '91'
  end
end
