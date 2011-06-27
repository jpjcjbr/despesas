class DespesasController < ApplicationController
  # GET /despesas
  # GET /despesas.xml
  def index
    @despesas = Despesa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @despesas }
    end
  end

  # GET /despesas/1
  # GET /despesas/1.xml
  def show
    @despesa = Despesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @despesa }
    end
  end

  # GET /despesas/new
  # GET /despesas/new.xml
  def new
    @despesa = Despesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @despesa }
    end
  end

  # GET /despesas/1/edit
  def edit
    @despesa = Despesa.find(params[:id])
  end

  # POST /despesas
  # POST /despesas.xml
  def create
    @despesa = Despesa.new(params[:despesa])

    respond_to do |format|
      if @despesa.save
        format.html { redirect_to(@despesa, :notice => 'Despesa was successfully created.') }
        format.xml  { render :xml => @despesa, :status => :created, :location => @despesa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /despesas/1
  # PUT /despesas/1.xml
  def update
    @despesa = Despesa.find(params[:id])

    respond_to do |format|
      if @despesa.update_attributes(params[:despesa])
        format.html { redirect_to(@despesa, :notice => 'Despesa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /despesas/1
  # DELETE /despesas/1.xml
  def destroy
    @despesa = Despesa.find(params[:id])
    @despesa.destroy

    respond_to do |format|
      format.html { redirect_to(despesas_url) }
      format.xml  { head :ok }
    end
  end
end
