class Image < ActiveRecord::Base
  belongs_to :project
  belongs_to :musing
  has_attached_file :photo

  private 
    def image_params
      params.require(:image).permit(:photo)
    end      
end
