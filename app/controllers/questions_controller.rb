class QuestionsController < ApplicationController
    def index
      @questions = Question.all
    end
    def new
      @question = Question.new
    end
   def create
     @question = current_user.question.build(question_params)
      if @question.save
        redirect_to questions_path, notice: 'Question was successfully created.'
      else
        render :new
      end
    end
    def show
      @question = Question.find_by(content: params[:content])
     
      
      if @question.questiontype == "private" && user_signed_in?
       
      elsif @question.questiontype == "public"
       
      else
        redirect_to root_path
      end
    end
 private
   def question_params
      params.require(:question).permit(:content, :questiontype)
    end
  end
  
