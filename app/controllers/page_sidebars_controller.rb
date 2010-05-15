class PageSidebarsController < ApplicationController
  # GET /page_sidebars
  # GET /page_sidebars.xml
  def index
    @page_sidebars = PageSidebar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @page_sidebars }
    end
  end

  # GET /page_sidebars/1
  # GET /page_sidebars/1.xml
  def show
    @page_sidebar = PageSidebar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page_sidebar }
    end
  end

  # GET /page_sidebars/new
  # GET /page_sidebars/new.xml
  def new
    @page_sidebar = PageSidebar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page_sidebar }
    end
  end

  # GET /page_sidebars/1/edit
  def edit
    @page_sidebar = PageSidebar.find(params[:id])
  end

  # POST /page_sidebars
  # POST /page_sidebars.xml
  def create
    @page_sidebar = PageSidebar.new(params[:page_sidebar])

    respond_to do |format|
      if @page_sidebar.save
        flash[:notice] = 'PageSidebar was successfully created.'
        format.html { redirect_to(@page_sidebar) }
        format.xml  { render :xml => @page_sidebar, :status => :created, :location => @page_sidebar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_sidebars/1
  # PUT /page_sidebars/1.xml
  def update
    @page_sidebar = PageSidebar.find(params[:id])

    respond_to do |format|
      if @page_sidebar.update_attributes(params[:page_sidebar])
        flash[:notice] = 'PageSidebar was successfully updated.'
        format.html { redirect_to(@page_sidebar) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_sidebar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_sidebars/1
  # DELETE /page_sidebars/1.xml
  def destroy
    @page_sidebar = PageSidebar.find(params[:id])
    @page_sidebar.destroy

    respond_to do |format|
      format.html { redirect_to(page_sidebars_url) }
      format.xml  { head :ok }
    end
  end
end
