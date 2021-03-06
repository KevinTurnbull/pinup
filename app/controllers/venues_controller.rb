class VenuesController < ApplicationController

  before_action :authenticate_user!, only: [ :edit, :update, :destroy ]

  expose(:venues) { Venue.order('title ASC') }

  expose(:venue, attributes: :venue_params) do 
    unless params[:id].nil?
      Venue.find(params[:id])
    else
      Venue.new
    end
  end

  # before_filter :set_venue, :only => [:edit]

  def create
    self.venue = Venue.new(venue_params)

    respond_to do |format|
      if venue.save
        format.html { redirect_to venue, notice: 'Venue was successfully created.' }
        format.json { render :show, status: :created, location: venue }
      else
        format.html { render :new }
        format.json { render json: venue.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    # @koord = Geocoder.coordinates(@venue.title)
    #   unless @koord == nil
    #     @lokat = Geocoder.search(@koord)[0].data
    #     @venue.street_address = @lokat["stnumber"] + " " + @lokat["staddress"]
    #     @venue.locality = @lokat["city"]
    #     @venue.region = @lokat["prov"]
    #     @venue.postal_code = @lokat["postal"]
    #   end
    # end
  end

  def update
    if params[:venue][:orig_id].present?
      @event = Event.find(params[:venue][:orig_id])
      respond_to do |format|
        if venue.update(venue_params)
          format.html { redirect_to edit_event_path(@event), notice: 'Venue was successfully updated.' }
          format.json { render :show, status: :ok, location: venue }
          venue.rewrite_duplicates
        else
          format.html { render :edit }
          format.json { render json: venue.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if venue.update(venue_params)
          format.html { redirect_to venue, notice: "Venue was successfully updated." }
          format.json { render :show, status: :ok, location: venue }
          venue.rewrite_duplicates
        else
          format.html { render :edit }
          format.json { render json: venue.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def destroy
    venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url, notice: 'Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def venue_params
      params.require(:venue).permit(:name, :address, :city, :title, :description, :url, :street_address, :locality, :duplicate_of_id, :region, :postal_code, :country, :latitude, :longitude, :email, :telephone, :closed, :wifi, :access_notes, :source_id, :authorized, :original_title, :source_id, :orig_id)
    end

    def set_venue
      @venue = Venue.find(params[:id])
    end
end
