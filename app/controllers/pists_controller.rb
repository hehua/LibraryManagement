class PistsController < ApplicationController
  # GET /pists
  # GET /pists.xml
  def index
    @pists = Pist.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pists }
    end
  end

  # GET /pists/1
  # GET /pists/1.xml
  def show
    @pist = Pist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pist }
    end
  end

  # GET /pists/new
  # GET /pists/new.xml
  def new
    @pist = Pist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pist }
    end
  end

  # GET /pists/1/edit
  def edit
    @pist = Pist.find(params[:id])
  end

  # POST /pists
  # POST /pists.xml
  def create
    @pist = Pist.new(params[:pist])

    respond_to do |format|
      if @pist.save
        flash[:notice] = 'Pist was successfully created.'
        format.html { redirect_to(@pist) }
        format.xml  { render :xml => @pist, :status => :created, :location => @pist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pists/1
  # PUT /pists/1.xml
  def update
    @pist = Pist.find(params[:id])

    respond_to do |format|
      if @pist.update_attributes(params[:pist])
        flash[:notice] = 'Pist was successfully updated.'
        format.html { redirect_to(@pist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pists/1
  # DELETE /pists/1.xml
  def destroy
    @pist = Pist.find(params[:id])
    @pist.destroy

    respond_to do |format|
      format.html { redirect_to(pists_url) }
      format.xml  { head :ok }
    end
  end
end
