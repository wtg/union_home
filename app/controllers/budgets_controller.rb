class BudgetsController < ApplicationController
  # GET /budgets
  # GET /budgets.xml
  def index
    @budgets = Budget.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @budgets }
    end
  end

  # GET /budgets/1
  # GET /budgets/1.xml
  def show
    @budget = Budget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @budget }
    end
  end

end
