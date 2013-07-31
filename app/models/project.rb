class Project < ActiveRecord::Base
  validates_presence_of :name,:info,:date
  has_many :images, :inverse_of => :project
  accepts_nested_attributes_for :images, :allow_destroy => true

  private
    def project_params
      params.require(:project).permit(:date,:info, :name,:images)
    end

end
