class AdMoviesController < ApplicationController
  before_action :set_ad_movie, only: [:show, :edit, :update, :destroy]

  include ApplicationHelper
  # GET /ad_movies
  # GET /ad_movies.json
  def index
    @ad_movies = AdMovie.all
    @uptoken = uptoken
  end

  # GET /ad_movies/1
  # GET /ad_movies/1.json
  def show
  end

  # GET /ad_movies/new
  def new
    @ad_movie = AdMovie.new
  end

  # GET /ad_movies/1/edit
  def edit
  end

  # POST /ad_movies
  # POST /ad_movies.json
  def create
    @ad_movie = AdMovie.new(ad_movie_params)

    respond_to do |format|
      if @ad_movie.save
        format.html { redirect_to @ad_movie, notice: 'Ad movie was successfully created.' }
        format.json { render :show, status: :created, location: @ad_movie }
      else
        format.html { render :new }
        format.json { render json: @ad_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_movies/1
  # PATCH/PUT /ad_movies/1.json
  def update
    respond_to do |format|
      if @ad_movie.update(ad_movie_params)
        format.html { redirect_to @ad_movie, notice: 'Ad movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_movie }
      else
        format.html { render :edit }
        format.json { render json: @ad_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_movies/1
  # DELETE /ad_movies/1.json
  def destroy
    @ad_movie.destroy
    respond_to do |format|
      format.html { redirect_to ad_movies_url, notice: 'Ad movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_movie
      @ad_movie = AdMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_movie_params
      params.require(:ad_movie).permit(:name, :url, :size)
    end
end
