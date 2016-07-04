class CoachingController < ApplicationController

def ask
end

def answer
  @query = params[:query]
  @answer = coach_answer(@query)
end


def coach_answer(query)
  if query == "I am going to work right now!"
    "That's my boy !"
  elsif query.include? "?"
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

end
