require 'spec_helper'

describe StaticPagesController do

  describe "GET 'goodies'" do
    it "returns http success" do
      get 'goodies'
      response.should be_success
    end
  end

end
