class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render 'index.html.erb'
  end

  def show
    # grab a particular fruit
    @fruit = Fruit.find_by(id: params[:id])
    # show it to the user
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    fruit = Fruit.new(
      color: params[:the_color],
      season: params[:the_season],
      taste: params[:the_taste],
      name: params[:the_name]
    )
    fruit.save
    redirect_to "/fruits"
  end

  def edit
    @fruit = Fruit.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    fruit = Fruit.find_by(id: params[:id])
    fruit.update(
      color: params[:input_color],
      season: params[:input_season],
      taste: params[:input_taste],
      name: params[:input_name]
    )
    redirect_to "/fruits"
  end
end
