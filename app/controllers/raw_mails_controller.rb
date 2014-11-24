class RawMailsController < ApplicationController
  before_action :set_raw_mail, only: [:show, :edit, :update, :destroy]

  # GET /raw_mails
  # GET /raw_mails.json
  def index
    @raw_mails = RawMail.all
  end

  # GET /raw_mails/1
  # GET /raw_mails/1.json
  def show
  end

  # GET /raw_mails/new
  def new
    @raw_mail = RawMail.new
  end

  # GET /raw_mails/1/edit
  def edit
  end

  # POST /raw_mails
  # POST /raw_mails.json
  def create
    @raw_mail = RawMail.new(raw_mail_params)

    respond_to do |format|
      if @raw_mail.save
        format.html { redirect_to @raw_mail, notice: 'Raw mail was successfully created.' }
        format.json { render :show, status: :created, location: @raw_mail }
      else
        format.html { render :new }
        format.json { render json: @raw_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_mails/1
  # PATCH/PUT /raw_mails/1.json
  def update
    respond_to do |format|
      if @raw_mail.update(raw_mail_params)
        format.html { redirect_to @raw_mail, notice: 'Raw mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_mail }
      else
        format.html { render :edit }
        format.json { render json: @raw_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_mails/1
  # DELETE /raw_mails/1.json
  def destroy
    @raw_mail.destroy
    respond_to do |format|
      format.html { redirect_to raw_mails_url, notice: 'Raw mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_mail
      @raw_mail = RawMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_mail_params
      params.require(:raw_mail).permit(:email_from, :email_body, :email_subject)
    end
end
