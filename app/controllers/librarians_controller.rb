class LibrariansController < ApplicationController
  before_action :set_librarian, only: %i[ show edit update destroy ]

  # GET /librarians or /librarians.json
  def index
    @librarians = Librarian.all
  end

  # GET /librarians/1 or /librarians/1.json
  def show
  end

  # GET /librarians/new
  def new
    @librarian = Librarian.new
  end

  # GET /librarians/1/edit
  def edit
  end

  # POST /librarians or /librarians.json
  def create
    @librarian = Librarian.new(librarian_params)

    respond_to do |format|
      if @librarian.save
        format.html { redirect_to @librarian, notice: "Librarian was successfully created." }
        format.json { render :show, status: :created, location: @librarian }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @librarian.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /librarians/1 or /librarians/1.json
  def update
    respond_to do |format|
      if @librarian.update(librarian_params)
        format.html { redirect_to @librarian, notice: "Librarian was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @librarian }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @librarian.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /librarians/1 or /librarians/1.json
  def destroy
    @librarian.destroy!

    respond_to do |format|
      format.html { redirect_to librarians_path, notice: "Librarian was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_librarian
      @librarian = Librarian.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def librarian_params
      params.expect(librarian: [ :name, :email, :password_digest, :must_change_password ])
    end
end
