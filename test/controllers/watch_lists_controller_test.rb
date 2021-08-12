require "test_helper"

class WatchListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch_list = watch_lists(:one)
  end

  test "should get index" do
    get watch_lists_url, as: :json
    assert_response :success
  end

  test "should create watch_list" do
    assert_difference('WatchList.count') do
      post watch_lists_url, params: { watch_list: { movie_id: @watch_list.movie_id, user_id: @watch_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show watch_list" do
    get watch_list_url(@watch_list), as: :json
    assert_response :success
  end

  test "should update watch_list" do
    patch watch_list_url(@watch_list), params: { watch_list: { movie_id: @watch_list.movie_id, user_id: @watch_list.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy watch_list" do
    assert_difference('WatchList.count', -1) do
      delete watch_list_url(@watch_list), as: :json
    end

    assert_response 204
  end
end
