class Comment < ActiveRecord::Base
  belongs_to :musing 
  belongs_to :comments
  has_many :comments
  validates_presence_of :comment,:name,:email

  private
    def project_params
      params.require(:comment).permit(:name,:comment, :email, :musing_id,:comment_id)
    end
end
