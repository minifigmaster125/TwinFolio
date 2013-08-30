class Comment < ActiveRecord::Base
  belongs_to :musing
  validates_presence_of :comment,:name,:email

  private
    def project_params
      params.require(:comment).permit(:name,:comment, :email, :musing_id)
    end
end
