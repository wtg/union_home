class CategoryPagesController < ApplicationController
  # GET /category_pages
  # GET /category_pages.xml
  def index
    @category_pages = CategoryPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @category_pages }
    end
  end

  # GET /category_pages/1
  # GET /category_pages/1.xml
  def show
    @category_page = CategoryPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category_page }
    end
  end

  # GET /category_pages/new
  # GET /category_pages/new.xml
  def new
    @category_page = CategoryPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category_page }
    end
  end

  # GET /category_pages/1/edit
  def edit
    @category_page = CategoryPage.find(params[:id])
  end

  # POST /category_pages
  # POST /category_pages.xml
  def create
    @category_page = CategoryPage.new(params[:category_page])

    respond_to do |format|
      if @category_page.save
        flash[:notice] = 'CategoryPage was successfully created.'
        format.html { redirect_to(@category_page) }
        format.xml  { render :xml => @category_page, :status => :created, :location => @category_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /category_pages/1
  # PUT /category_pages/1.xml
  def update
    @category_page = CategoryPage.find(params[:id])

    respond_to do |format|
      if @category_page.update_attributes(params[:category_page])
        flash[:notice] = 'CategoryPage was successfully updated.'
        format.html { redirect_to(@category_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /category_pages/1
  # DELETE /category_pages/1.xml
  def destroy
    @category_page = CategoryPage.find(params[:id])
    @category_page.destroy

    respond_to do |format|
      format.html { redirect_to(category_pages_url) }
      format.xml  { head :ok }
    end
  end
end
