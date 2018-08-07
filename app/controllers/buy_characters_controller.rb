class BuyCharactersController < ApplicationController
  before_action :set_buy_character, only: [:show, :edit, :update, :destroy]

  # GET /buy_characters
  # GET /buy_characters.json
  def index
    @buy_characters = BuyCharacter.all
  end

  # GET /buy_characters/1
  # GET /buy_characters/1.json
  def show
  end

  # GET /buy_characters/new
  def new
    @buy_character = BuyCharacter.new
  end

  # GET /buy_characters/1/edit
  def edit
  end

  # POST /buy_characters
  # POST /buy_characters.json
  def create
    @buy_character = BuyCharacter.new(buy_character_params)

    respond_to do |format|
      if @buy_character.save
        format.html { redirect_to @buy_character, notice: 'Buy character was successfully created.' }
        format.json { render :show, status: :created, location: @buy_character }
      else
        format.html { render :new }
        format.json { render json: @buy_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_characters/1
  # PATCH/PUT /buy_characters/1.json
  def update
    respond_to do |format|
      if @buy_character.update(buy_character_params)
        format.html { redirect_to @buy_character, notice: 'Buy character was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_character }
      else
        format.html { render :edit }
        format.json { render json: @buy_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_characters/1
  # DELETE /buy_characters/1.json
  def destroy
    @buy_character.destroy
    respond_to do |format|
      format.html { redirect_to buy_characters_url, notice: 'Buy character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_character
      @buy_character = BuyCharacter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_character_params
      params.require(:buy_character).permit(:image_sold, :description, :price)
    end
end
