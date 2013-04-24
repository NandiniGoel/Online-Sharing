class IdddntegersController < ApplicationController
  # GET /idddntegers
  # GET /idddntegers.json
  def index
    @idddntegers = Idddnteger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @idddntegers }
    end
  end

  # GET /idddntegers/1
  # GET /idddntegers/1.json
  def show
    @idddnteger = Idddnteger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idddnteger }
    end
  end

  # GET /idddntegers/new
  # GET /idddntegers/new.json
  def new
    @idddnteger = Idddnteger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @idddnteger }
    end
  end

  # GET /idddntegers/1/edit
  def edit
    @idddnteger = Idddnteger.find(params[:id])
  end

  # POST /idddntegers
  # POST /idddntegers.json
  def create
    @idddnteger = Idddnteger.new(params[:idddnteger])

    respond_to do |format|
      if @idddnteger.save
        format.html { redirect_to @idddnteger, notice: 'Idddnteger was successfully created.' }
        format.json { render json: @idddnteger, status: :created, location: @idddnteger }
      else
        format.html { render action: "new" }
        format.json { render json: @idddnteger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /idddntegers/1
  # PUT /idddntegers/1.json
  def update
    @idddnteger = Idddnteger.find(params[:id])

    respond_to do |format|
      if @idddnteger.update_attributes(params[:idddnteger])
        format.html { redirect_to @idddnteger, notice: 'Idddnteger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idddnteger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idddntegers/1
  # DELETE /idddntegers/1.json
  def destroy
    @idddnteger = Idddnteger.find(params[:id])
    @idddnteger.destroy

    respond_to do |format|
      format.html { redirect_to idddntegers_url }
      format.json { head :no_content }
    end
  end
end
