module NeoPixel
  class NeoPixelsController < ApplicationController
    before_action :set_neo_pixel, only: [:show, :edit, :update, :destroy]

    # GET /alert/leds
    def index
      @neo_pixels = ::NeoPixel::NeoPixel.all
    end

    # GET /alert/leds/1
    def show
    end

    # GET /alert/leds/new
    def new
      redirect_to neo_pixels_url, notice: 'You are not authorized to do that.'
    end

    # GET /alert/leds/1/edit
    def edit
    end

    # POST /alert/leds
    def create
      @neo_pixel = ::NeoPixel::NeoPixel.new(neo_pixel_params)

      if @neo_pixel.save
        redirect_to neo_pixel_path(@neo_pixel), notice: 'NeoPixel was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /alert/leds/1
    def update
      if @neo_pixel.update(neo_pixel_params)
        redirect_to neo_pixel_path(@neo_pixel), notice: 'NeoPixel was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /alert/leds/1
    def destroy
      @neo_pixel.destroy
      redirect_to neo_pixels_url, notice: 'neo_pixel was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_neo_pixel
        @neo_pixel = ::NeoPixel::NeoPixel.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def neo_pixel_params
        params.fetch(:neo_pixel_neo_pixel, {}).permit(:id, :apiotics_instance, :led_attributes => ["led_state", "id"], :button_attributes => ["safe", "id"], :neo_pixel_stick_eight_attributes => ["led_index", "led_color", "id"])
      end
  end
end