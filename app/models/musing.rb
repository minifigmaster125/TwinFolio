class Musing < ActiveRecord::Base

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
end
