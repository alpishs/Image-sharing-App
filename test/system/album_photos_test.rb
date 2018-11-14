require "application_system_test_case"

class AlbumPhotosTest < ApplicationSystemTestCase
  setup do
    @album_photo = album_photos(:one)
  end

  test "visiting the index" do
    visit album_photos_url
    assert_selector "h1", text: "Album Photos"
  end

  test "creating a Album photo" do
    visit album_photos_url
    click_on "New Album Photo"

    fill_in "Album", with: @album_photo.album_id
    fill_in "Avatar", with: @album_photo.avatar
    fill_in "Photo Name", with: @album_photo.photo_name
    fill_in "Tag Line", with: @album_photo.tag_line
    click_on "Create Album photo"

    assert_text "Album photo was successfully created"
    click_on "Back"
  end

  test "updating a Album photo" do
    visit album_photos_url
    click_on "Edit", match: :first

    fill_in "Album", with: @album_photo.album_id
    fill_in "Avatar", with: @album_photo.avatar
    fill_in "Photo Name", with: @album_photo.photo_name
    fill_in "Tag Line", with: @album_photo.tag_line
    click_on "Update Album photo"

    assert_text "Album photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Album photo" do
    visit album_photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album photo was successfully destroyed"
  end
end
