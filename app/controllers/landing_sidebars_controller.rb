class LandingSidebarsController < ApplicationController
  # GET /landing_sidebars
  # GET /landing_sidebars.xml
  def index
    @landing_sidebars = LandingSidebar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @landing_sidebars }
    end
  end

  # GET /landing_sidebars/1
  # GET /landing_sidebars/1.xml
  def show
    @landing_sidebar = LandingSidebar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @landing_sidebar }
    end
  end

  # GET /landing_sidebars/new
  # GET /landing_sidebars/new.xml
  def new
    @landing_sidebar = LandingSidebar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @landing_sidebar }
    end
  end

  # GET /landing_sidebars/1/edit
  def edit
    @landing_sidebar = LandingSidebar.find(params[:id])
  end

  # POST /landing_sidebars
  # POST /landing_sidebars.xml
  def create
    @landing_sidebar = LandingSidebar.new(params[:landing_sidebar])

    respond_to do |format|
      if @landing_sidebar.save
        flash[:notice] = 'LandingSidebar was successfully created.'
        format.html { redirect_to(@landing_sidebar) }
        format.xml  { render :xml => @landing_sidebar, :status => :created, :location => @landing_sidebar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @landing_sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /landing_sidebars/1
  # PUT /landing_sidebars/1.xml
  def update
    @landing_sidebar = LandingSidebar.find(params[:id])

    respond_to do |format|
      if @landing_sidebar.update_attributes(params[:landing_sidebar])
        flash[:notice] = 'LandingSidebar was successfully updated.'
        format.html { redirect_to(@landing_sidebar) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @landing_sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_sidebars/1
  # DELETE /landing_sidebars/1.xml
  def destroy
    @landing_sidebar = LandingSidebar.find(params[:id])
    @landing_sidebar.destroy

    respond_to do |format|
      format.html { redirect_to(landing_sidebars_url) }
      format.xml  { head :ok }
    end
  end
end
