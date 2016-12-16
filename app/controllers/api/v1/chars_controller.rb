class Api::V1::CharsController < ApplicationController
  before_action :set_char, only: [:show, :update, :destroy]

  # GET /chars
  def index
    @chars = Char.all

    render json: @chars
  end

  # GET /chars/1
  def show
    render json: @char
  end

  # POST /chars
  def create
    @char = Char.new(char_params)

    if @char.save
      render json: @char, status: :created, location: @char
    else
      render json: @char.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chars/1
  def update
    if @char.update(char_params)
      render json: @char
    else
      render json: @char.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chars/1
  def destroy
    @char.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char
      @char = Char.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def char_params
      params.require(:char).permit(:title, :route, :url, :head_shot, :full_view)
    end
end
