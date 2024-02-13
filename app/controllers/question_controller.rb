class QuestionController < ApplicationController
  
  def new
    @uest= question.all
  end
end
