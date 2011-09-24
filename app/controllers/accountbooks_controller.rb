class AccountbooksController < ApplicationController
  # GET /accountbooks
  # GET /accountbooks.xml
  def index
    @accountbooks = Accountbook.all
    @accountbooks_count = Accountbook.count
    @accountbooks_sum   = Accountbook.sum('price')
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @accountbooks }
    end
  end

  def total_per_day
    @accountbooks = Accountbook.select('SUM(price) as price, date').group('date')
    render 'accountbooks/total_per_day'
  end  
  
  def average_per_subject
    @accountbooks = Accountbook.select('AVG(price) as avg_price, subject').group('subject').order('date desc')
    render 'accountbooks/average_per_subject'
  end

  # GET /accountbooks/1
  # GET /accountbooks/1.xml
  def show
    @accountbook = Accountbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @accountbook }
    end
  end

  # GET /accountbooks/new
  # GET /accountbooks/new.xml
  def new
    @accountbook = Accountbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @accountbook }
    end
  end

  # GET /accountbooks/newformtag
  def newformtag
    @accountbook = Accountbook.new

    respond_to do |format|
      format.html # newformtag.html.erb
      format.xml  { render :xml => @accountbook }
    end
  end
  
  # GET /accountbooks/formelement
  def formelement
    @accountbook = Accountbook.new

    respond_to do |format|
      format.html # formelement.html.erb
      format.xml  { render :xml => @accountbook }
    end
  end

  # GET /accountbooks/helper
  def helper
    respond_to do |format|
      format.html # formelement.html.erb
      format.xml  { render :xml => @accountbook }
    end
  end

  # GET /accountbooks/1/edit
  def edit
    @accountbook = Accountbook.find(params[:id])
  end

  # POST /accountbooks
  # POST /accountbooks.xml
  def create
    @accountbook = Accountbook.new(params[:accountbook])

    respond_to do |format|
      if @accountbook.save
        format.html { redirect_to(@accountbook, :notice => 'Accountbook was successfully created.') }
        format.xml  { render :xml => @accountbook, :status => :created, :location => @accountbook }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @accountbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /accountbooks/1
  # PUT /accountbooks/1.xml
  def update
    @accountbook = Accountbook.find(params[:id])

    respond_to do |format|
      if @accountbook.update_attributes(params[:accountbook])
        format.html { redirect_to(@accountbook, :notice => 'Accountbook was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @accountbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accountbooks/1
  # DELETE /accountbooks/1.xml
  def destroy
    @accountbook = Accountbook.find(params[:id])
    @accountbook.destroy

    respond_to do |format|
      format.html { redirect_to(accountbooks_url) }
      format.xml  { head :ok }
    end
  end
  

end
