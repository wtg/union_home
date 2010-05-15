class SidebarsController < ApplicationController
  # GET /sidebars
  # GET /sidebars.xml
  def index
    @sidebars = Sidebar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sidebars }
    end
  end

  # GET /sidebars/1
  # GET /sidebars/1.xml
  def show
    @sidebar = Sidebar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sidebar }
    end
  end

  # GET /sidebars/new
  # GET /sidebars/new.xml
  def new
    @sidebar = Sidebar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sidebar }
    end
  end

  # GET /sidebars/1/edit
  def edit
    @sidebar = Sidebar.find(params[:id])
  end

  # POST /sidebars
  # POST /sidebars.xml
  def create
    @sidebar = Sidebar.new(params[:sidebar])

    respond_to do |format|
      if @sidebar.save
        flash[:notice] = 'Sidebar was successfully created.'
        format.html { redirect_to(@sidebar) }
        format.xml  { render :xml => @sidebar, :status => :created, :location => @sidebar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sidebars/1
  # PUT /sidebars/1.xml
  def update
    @sidebar = Sidebar.find(params[:id])

    respond_to do |format|
      if @sidebar.update_attributes(params[:sidebar])
        flash[:notice] = 'Sidebar was successfully updated.'
        format.html { redirect_to(@sidebar) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sidebars/1
  # DELETE /sidebars/1.xml
  def destroy
    @sidebar = Sidebar.find(params[:id])
    @sidebar.destroy

    respond_to do |format|
      format.html { redirect_to(sidebars_url) }
      format.xml  { head :ok }
    end
  end
end
