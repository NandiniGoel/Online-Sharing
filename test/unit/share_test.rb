require 'test_helper'

class ShareTest < ActiveSupport::TestCase
	test "that a share require content" do
		share = Share.new
		assert !share.save  
		assert !share.errors[:content].empty?
		
	end
end
