require 'spec_helper'

describe ListController do

  describe "GET 'app/list'" do
    it "returns http success" do
      get 'app/list'
      response.should be_success
    end
  end

end
