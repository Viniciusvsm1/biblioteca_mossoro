class ReadersController < ApplicationController
  before_action :set_reader, only: %i[ show edit update destroy ]

  # GET /readers or /readers.json
  def index
    @readers = Reader.all
  end

  # GET /readers/1 or /readers/1.json
  def show
  end

  # GET /readers/new
  def new
    @reader = Reader.new
  end

  # GET /readers/1/edit
  def edit
  end

  # POST /readers or /readers.json
  def create
    @reader = Reader.new(reader_params)

    respond_to do |format|
      if @reader.save
        format.html { redirect_to @reader, notice: "Reader was successfully created." }
        format.json { render :show, status: :created, location: @reader }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @reader.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /readers/1 or /readers/1.json
  def update
    respond_to do |format|
      if @reader.update(reader_params)
        format.html { redirect_to @reader, notice: "Reader was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @reader }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @reader.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /readers/1 or /readers/1.json
  def destroy
    @reader.destroy!

    respond_to do |format|
      format.html { redirect_to readers_path, notice: "Reader was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reader
      @reader = Reader.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def reader_params
      params.expect(reader: [ :name, :cpf, :phone, :email, :loan_password ])
    end
end
