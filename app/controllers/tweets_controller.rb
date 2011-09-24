class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all

    @tweet = Tweet.new


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tweets }
    end
  end

  def create
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to(@tweet, :notice => 'Tweet was successfully created.', :action => 'index') }
        format.xml  { render :xml => @tweet, :status => :created, :location => @tweet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tweet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
    
  end

end
