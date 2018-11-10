class TableUsersController < ApplicationController
  before_action :set_table_user, only: [:show, :edit, :update, :destroy]

  # GET /table_users
  # GET /table_users.json
  def index
    @table_users = TableUser.all
  end

  # GET /table_users/1
  # GET /table_users/1.json
  def show
  end

  # GET /table_users/new
  def new
    @table_user = TableUser.new
  end

  # GET /table_users/1/edit
  def edit
  end

  # POST /table_users
  # POST /table_users.json
  def create
    @table_user = TableUser.new(table_user_params)

    respond_to do |format|
      if @table_user.save
        format.html { redirect_to @table_user, notice: 'Table user was successfully created.' }
        format.json { render :show, status: :created, location: @table_user }
      else
        format.html { render :new }
        format.json { render json: @table_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_users/1
  # PATCH/PUT /table_users/1.json
  def update
    respond_to do |format|
      if @table_user.update(table_user_params)
        format.html { redirect_to @table_user, notice: 'Table user was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_user }
      else
        format.html { render :edit }
        format.json { render json: @table_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_users/1
  # DELETE /table_users/1.json
  def destroy
    @table_user.destroy
    respond_to do |format|
      format.html { redirect_to table_users_url, notice: 'Table user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_user
      @table_user = TableUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_user_params
      params.require(:table_user).permit(:name, :email, :documento, :direccion, :ocupacion)
    end
end
