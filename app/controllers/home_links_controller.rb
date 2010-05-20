class HomeLinksController < ApplicationController
  # GET /home_links
  # GET /home_links.xml
  def index
    @home_links = HomeLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @home_links }
    end
  end

  # GET /home_links/1
  # GET /home_links/1.xml
  def show
    @home_link = HomeLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @home_link }
    end
  end

  # GET /home_links/new
  # GET /home_links/new.xml
  def new
    @home_link = HomeLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @home_link }
    end
  end

  # GET /home_links/1/edit
  def edit
    @home_link = HomeLink.find(params[:id])
  end

  # POST /home_links
  # POST /home_links.xml
  def create
    @home_link = HomeLink.new(params[:home_link])

    respond_to do |format|
      if @home_link.save
        flash[:notice] = 'HomeLink was successfully created.'
        format.html { redirect_to(@home_link) }
        format.xml  { render :xml => @home_link, :status => :created, :location => @home_link }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @home_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /home_links/1
  # PUT /home_links/1.xml
  def update
    @home_link = HomeLink.find(params[:id])

    respond_to do |format|
      if @home_link.update_attributes(params[:home_link])
        flash[:notice] = 'HomeLink was successfully updated.'
        format.html { redirect_to(@home_link) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @home_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /home_links/1
  # DELETE /home_links/1.xml
  def destroy
    @home_link = HomeLink.find(params[:id])
    @home_link.destroy

    respond_to do |format|
      format.html { redirect_to(home_links_url) }
      format.xml  { head :ok }
    end
  end
end
