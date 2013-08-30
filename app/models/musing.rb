class Musing < ActiveRecord::Base
  validates_presence_of :title,:post,:date
  has_many  :images, :inverse_of => :musing
  has_many :comments
  accepts_nested_attributes_for :images, :allow_destroy => true

  def self.all_joraaver(page)
    paginate  :per_page => 2, :page => page,
              :conditions => {joraaver: true},
              :order => 'id DESC'
  end

  def self.all_suchaaver(page)
    paginate  :per_page => 2, :page => page,
              :conditions => {joraaver: false},
              :order => 'id DESC'
  end
  
  private
    def project_params
      params.require(:musing).permit(:date,:post, :title,:images)
    end
end
