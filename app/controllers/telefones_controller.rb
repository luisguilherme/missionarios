class TelefonesController < ApplicationController
  # GET /telefones
  # GET /telefones.xml
  def index
    @telefones = Telefone.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telefones }
    end
  end

  # GET /telefones/1
  # GET /telefones/1.xml
  def show
    @telefone = Telefone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telefone }
    end
  end

  # GET /telefones/new
  # GET /telefones/new.xml
  def new
    @telefone = Telefone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telefone }
    end
  end

  # GET /telefones/1/edit
  def edit
    @telefone = Telefone.find(params[:id])
  end

  # POST /telefones
  # POST /telefones.xml
  def create
    @telefone = Telefone.new(params[:telefone])

    respond_to do |format|
      if @telefone.save
        flash[:notice] = 'Telefone was successfully created.'
        format.html { redirect_to(@telefone) }
        format.xml  { render :xml => @telefone, :status => :created, :location => @telefone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telefone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telefones/1
  # PUT /telefones/1.xml
  def update
    @telefone = Telefone.find(params[:id])

    respond_to do |format|
      if @telefone.update_attributes(params[:telefone])
        flash[:notice] = 'Telefone was successfully updated.'
        format.html { redirect_to(@telefone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telefone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telefones/1
  # DELETE /telefones/1.xml
  def destroy
    @telefone = Telefone.find(params[:id])
    @telefone.destroy

    respond_to do |format|
      format.html { redirect_to(telefones_url) }
      format.xml  { head :ok }
    end
  end
end
