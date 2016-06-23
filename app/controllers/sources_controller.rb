class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def import
    @importer = Source::Importer.new(source_params)
    respond_to do |format|
      if @importer.import
        format.html { redirect_to admin_dashboard_path, flash: { success: render_to_string(layout: false) } }
        format.xml  { render xml: @importer.source, events: @importer.events }
      else
        format.html { redirect_to new_source_path(url: @importer.source.url), flash: { failure: @importer.failure_message } }
        format.xml  { render xml: @importer.source.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @sources = Source.listing

    respond_to do |format|
      format.html { @sources = @sources.paginate(page: params[:page], per_page: params[:per_page]) }
      format.xml  { render xml: @sources }
    end
  end

  def show
    @source = Source.find(params[:id], include: [:events, :venues])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @source }
    end
  rescue ActiveRecord::RecordNotFound => error
    flash[:failure] = error.to_s if params[:id] != "import"
    redirect_to new_source_path
  end

  def new
    if current_user.admin?
      @source = Source.new
      @event_type_id = params[:event_type_id]
      respond_with(@source)
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    @source = Source.find(params[:id])
  end

  def create
    @source = Source.new(source_params)
    @source.save
    respond_with(@source)
  end

  def update
    @source = Source.find(params[:id])
    create_or_update
  end

  def create_or_update
    respond_to do |format|
      if @source.update_attributes(source_params)
        format.html { redirect_to @source, notice: 'Source was successfully saved.' }
        format.xml  { render xml: @source, status: :created, location: @source }
      else
        format.html { render action: @source.new_record? ? "new" : "edit" }
        format.xml  { render xml: @source.errors, status: :unprocessable_entity }
      end
    end
  end
  private :create_or_update

  def destroy
    @source.destroy
    respond_with(@source)
  end

  private
    def set_source
      @source = Source.find(params[:id])
    end

    def source_params
      params.require(:source).permit(:title, :url, :imported_at, :reimport, :commit, :event_type_id, :id, :venue_id, :artist_id)
    end
end
