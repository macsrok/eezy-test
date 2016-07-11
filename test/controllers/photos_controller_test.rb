require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success, "Could not get index"
  end

  test "should get search without page" do
    get :search , terms:'apple-joe'
    assert_response :success
  end

  test "should get search with page" do
    get :search , terms:'apple-joe', page:5
    assert_response :success
  end

  test "should not get search without terms" do
    assert_raises(ActionController::UrlGenerationError) do
      get :search
    end
  end

  test "should not get redirect without terms" do
    assert_raises(ActionController::UrlGenerationError) do
      get :redirect, external_id:1234567890
    end
  end

  test "should not get redirect without external_id" do
    assert_raises(ActionController::UrlGenerationError) do
      get :redirect, terms:"1234567890"
    end
  end


  test "should create record on redirect" do
    photos = Photo.all.count
    get :redirect, terms:"bike", external_id:388736
    get :redirect, terms:"apple", external_id:388736
    assert_not_equal(photos, Photo.all.count)
  end

  test "should redirect on redirect" do
    get :redirect, terms:"bike", external_id:388736
    assert_redirected_to "https://500px.com/photo/388736"
  end

end
