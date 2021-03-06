class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.where(:is_moderated => 'true')
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @musing = Musing.find(params[:musing_id])
    @comment = @musing.comments.new(comment_params)
      if @comment.save
       if(@musing.joraaver == false)
         redirect_to suchaaver_musing_path(@musing),:flash => { success: "Your comment will undergo moderation before being added. Thanks!" }
         ContactMailer.s_comment(@comment).deliver
       else
         redirect_to musing_path(@musing),:flash => { success: "Your comment will undergo moderation before being added. Thanks!" }
 	 ContactMailer.comment(@comment).deliver
       end
      else
       if(@musing.joraaver == false)
         redirect_to suchaaver_musing_path(@musing),:flash => { failure:  "Comment not added. Please fill in all the fields."}
       else 
         redirect_to musing_path(@musing),:flash => { failure: "Comment not added. Please fill in all the fields." }
       end
      end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :email, :comment, :musing_id) #, :comment_id)
    end
end
