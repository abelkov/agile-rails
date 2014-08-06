require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3' do |elements|
    	assert elements.length, 3
    	assert elements[2], 'Programming Ruby'
    end
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
