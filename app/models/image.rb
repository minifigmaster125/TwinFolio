class Image < ActiveRecord::Base
  belongs_to :project
  has_attached_file :photo
  validates_presence_of :project_id

  private 
    def image_params
      params.require(:image).permit(:photo)
    end      
end
