class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]
  before_action :set_type

  def index
    @scores = type_class.all
  end

  def show
  end

  def new
    #binding.pry
    @score = type_class.new
  end

  def edit
  end

  def create
    @score = Score.new(score_params)

    if @score.save
      redirect_to @score, notice: "#{type} was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    if @score.update(params[:score])
      redirect_to @score, notice: "#{type} was successfully created."
    else
      render action: 'edit'
    end
  end


  def destroy
    @score.destroy
    redirect_to scores_url
  end

  private

  def set_type
    @type = type
  end

  def type
    params[:type] || "Score"
  end

  def type_class
    type.constantize
  end

  def set_score
    @score = type_class.find(params[:id])
  end

  def score_params
    params.require(type.downcase.to_sym).permit(:name, :type, :age)
  end

end
