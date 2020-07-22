require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
	setup do
		@room = rooms(:one)
	end

	test "should get index" do
		get rooms_url, as: :json
		assert_response :success
	end

	test "should create room" do
		assert_difference('Room.count') do
		post rooms_url, params: { name: @room.name }, as: :json
		end

		assert_response :success
	end

	test "should show room" do
		get room_url(@room), as: :json
		assert_response :success
	end
end
