class QuestionController < ApplicationController

  def create
         @question = Question.new
         @question.title = params[:question][:title]
         @question.body = params[:question][:body]
         @question.resolved = params[:question][resolved]

         if @question.save
           flash[:notice] = "Question was entered."
           redirect_to @question
         else
           flash[:error] = "There was an error submitting the question. Please try again."
           render :new
         end
       end
  def read
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question = Question.title = params[:question][:title]
    @question = Question.body = params[:question][:body]
    @question = Question.resolved = params[:question][:resolved]

    if @question.save
      flash[:notice] = "Question edited."
      redirect_to @question
    else
      flash[:error] = "There was an error editing the question. please try again"
      render :edit
    end
  end

  def delete
      @question = Question.find(params[:id])

      if @question.destroy
        flash[:notice] = "\"#{@question.title}\ "was deleted successfully."
        redirect_to question_path
      else
        flash[:error] = "There was an error deleting the question."
        render :show
      end
    end
end
