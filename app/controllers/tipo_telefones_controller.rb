class TipoTelefonesController < ApplicationController
  # GET /tipo_telefones
  # GET /tipo_telefones.xml
  def index
    @tipo_telefones = TipoTelefone.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_telefones }
    end
  end

  # GET /tipo_telefones/1
  # GET /tipo_telefones/1.xml
  def show
    @tipo_telefone = TipoTelefone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_telefone }
    end
  end

  # GET /tipo_telefones/new
  # GET /tipo_telefones/new.xml
  def new
    @tipo_telefone = TipoTelefone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_telefone }
    end
  end

  # GET /tipo_telefones/1/edit
  def edit
    @tipo_telefone = TipoTelefone.find(params[:id])
  end

  # POST /tipo_telefones
  # POST /tipo_telefones.xml
  def create
    @tipo_telefone = TipoTelefone.new(params[:tipo_telefone])

    respond_to do |format|
      if @tipo_telefone.save
        flash[:notice] = 'TipoTelefone was successfully created.'
        format.html { redirect_to(@tipo_telefone) }
        format.xml  { render :xml => @tipo_telefone, :status => :created, :location => @tipo_telefone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_telefone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_telefones/1
  # PUT /tipo_telefones/1.xml
  def update
    @tipo_telefone = TipoTelefone.find(params[:id])

    respond_to do |format|
      if @tipo_telefone.update_attributes(params[:tipo_telefone])
        flash[:notice] = 'TipoTelefone was successfully updated.'
        format.html { redirect_to(@tipo_telefone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_telefone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_telefones/1
  # DELETE /tipo_telefones/1.xml
  def destroy
    @tipo_telefone = TipoTelefone.find(params[:id])
    @tipo_telefone.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_telefones_url) }
      format.xml  { head :ok }
    end
  end
end
