require 'test_helper'

class AlbumPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_photo = album_photos(:one)
  end

  test "should get index" do
    get album_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_album_photo_url
    assert_response :success
  end

  test "should create album_photo" do
    assert_difference('AlbumPhoto.count') do
      post album_photos_url, params: { album_photo: { album_id: @album_photo.album_id, avatar: @album_photo.avatar, photo_name: @album_photo.photo_name, tag_line: @album_photo.tag_line } }
    end

    assert_redirected_to album_photo_url(AlbumPhoto.last)
  end

  test "should show album_photo" do
    get album_photo_url(@album_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_photo_url(@album_photo)
    assert_response :success
  end

  test "should update album_photo" do
    patch album_photo_url(@album_photo), params: { album_photo: { album_id: @album_photo.album_id, avatar: @album_photo.avatar, photo_name: @album_photo.photo_name, tag_line: @album_photo.tag_line } }
    assert_redirected_to album_photo_url(@album_photo)
  end

  test "should destroy album_photo" do
    assert_difference('AlbumPhoto.count', -1) do
      delete album_photo_url(@album_photo)
    end

    assert_redirected_to album_photos_url
  end
end
