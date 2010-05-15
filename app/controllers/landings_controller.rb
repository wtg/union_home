class LandingsController < ApplicationController
  # GET /landings
  # GET /landings.xml
  def index
    @landings = Landing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @landings }
    end
  end

  # GET /landings/1
  # GET /landings/1.xml
  def show
    @landing = Landing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @landing }
    end
  end

  # GET /landings/new
  # GET /landings/new.xml
  def new
    @landing = Landing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @landing }
    end
  end

  # GET /landings/1/edit
  def edit
    @landing = Landing.find(params[:id])
  end

  # POST /landings
  # POST /landings.xml
  def create
    @landing = Landing.new(params[:landing])

    respond_to do |format|
      if @landing.save
        flash[:notice] = 'Landing was successfully created.'
        format.html { redirect_to(@landing) }
        format.xml  { render :xml => @landing, :status => :created, :location => @landing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @landing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /landings/1
  # PUT /landings/1.xml
  def update
    @landing = Landing.find(params[:id])

    respond_to do |format|
      if @landing.update_attributes(params[:landing])
        flash[:notice] = 'Landing was successfully updated.'
        format.html { redirect_to(@landing) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @landing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /landings/1
  # DELETE /landings/1.xml
  def destroy
    @landing = Landing.find(params[:id])
    @landing.destroy

    respond_to do |format|
      format.html { redirect_to(landings_url) }
      format.xml  { head :ok }
    end
  end
end
