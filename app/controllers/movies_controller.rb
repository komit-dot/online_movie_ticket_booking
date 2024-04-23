class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show  
    @movie = Movie.find(params[:id])
  end

  def edit
   @movie = Movie.find(params[:id])
  end

  def update
   @movie = Movie.find(params[:id])
   if @movie.update(movie_params)
    redirect_to movie_path, notice: "Movie has been updated successfully."
   else
    render :edit
   end
  end

  def create
    @movie = Movie.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @movie = Movie.find(params[:id])
   #byebug
   @movie.destroy
   redirect_to movies_path, notice: "Movie has been deleted successfully."
  end






















private

def movie_params
  params.require(:movie).permit(:name, :description, :duration)

end 
end
