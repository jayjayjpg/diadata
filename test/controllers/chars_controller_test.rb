require 'test_helper'

class CharsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @char = chars(:one)
  end

  test "should get index" do
    get chars_url, as: :json
    assert_response :success
  end

  test "should create char" do
    assert_difference('Char.count') do
      post chars_url, params: { char: { route: @char.route, title: @char.title, url: @char.url } }, as: :json
    end

    assert_response 201
  end

  test "should show char" do
    get char_url(@char), as: :json
    assert_response :success
  end

  test "should update char" do
    patch char_url(@char), params: { char: { route: @char.route, title: @char.title, url: @char.url } }, as: :json
    assert_response 200
  end

  test "should destroy char" do
    assert_difference('Char.count', -1) do
      delete char_url(@char), as: :json
    end

    assert_response 204
  end
end
