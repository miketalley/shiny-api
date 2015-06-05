class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @cards = Card.all
    respond_with(@cards)
  end

  def show
    respond_with(@card)
  end

  def new
    @card = Card.new
    respond_with(@card)
  end

  def edit
  end

  def create
    # card_params.delete_if {|key, value| (key.include? "cost") && (value.nil? || value.to_i == 0)}
    @card = Card.new(card_params)
    @card.save
    respond_with(@card)
  end

  def update
    @card.update(card_params)
    respond_with(@card)
  end

  def destroy
    @card.destroy
    respond_with(@card)
  end

  def level
    @cards = Card.all.select{ |card| card.level == params[:level] }
    respond_with(@cards)
  end
  
  private
    def set_card
      @card = Card.find(params[:id])
    end

    def card_params
      # params[:card]
      params.require(:card).permit(
        :level,
        :color,
        :points,
        :cost,
        :cost_white,
        :cost_blue,
        :cost_green,
        :cost_red,
        :cost_brown,
        :image
      )
    end
end
