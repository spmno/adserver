require 'test_helper'

class AdMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_movie = ad_movies(:one)
  end

  test "should get index" do
    get ad_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_movie_url
    assert_response :success
  end

  test "should create ad_movie" do
    assert_difference('AdMovie.count') do
      post ad_movies_url, params: { ad_movie: { name: @ad_movie.name, size: @ad_movie.size, url: @ad_movie.url } }
    end

    assert_redirected_to ad_movie_url(AdMovie.last)
  end

  test "should show ad_movie" do
    get ad_movie_url(@ad_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_movie_url(@ad_movie)
    assert_response :success
  end

  test "should update ad_movie" do
    patch ad_movie_url(@ad_movie), params: { ad_movie: { name: @ad_movie.name, size: @ad_movie.size, url: @ad_movie.url } }
    assert_redirected_to ad_movie_url(@ad_movie)
  end

  test "should destroy ad_movie" do
    assert_difference('AdMovie.count', -1) do
      delete ad_movie_url(@ad_movie)
    end

    assert_redirected_to ad_movies_url
  end
end
