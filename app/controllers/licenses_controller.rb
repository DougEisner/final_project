class LicensesController < ApplicationController
  before_action :set_license, only: [:show, :edit, :update, :destroy]

  # GET /licenses
  # GET /licenses.json
  def index
    @licenses = License.all
  end

  # GET /licenses/1
  # GET /licenses/1.json
  def show
    respond_to do |format|
      format.html
       # display a pdf that already exists
      format.pdf do
        render pdf: "license_agreement",
              template: "licenses/license.pdf.erb",
              locals: {:license => @license}
      end
    end
  end

  # GET /licenses/new
  def new
    @product = Product.find(params[:product_id])
    @license = @product.licenses.build(price: params[:price])
  end

  # GET /licenses/1/edit
  def edit
  end

  # POST /licenses
  # POST /licenses.json
  def create
    @license = License.new(license_params)

    respond_to do |format|
      if @license.save
        format.html { redirect_to :controller => 'charges', :action => 'new', :license_id => @license.id}

        format.json { render :show, status: :created, location: @license }
        save_pdf
      else
        format.html { render :new }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licenses/1
  # PATCH/PUT /licenses/1.json
  def update
    respond_to do |format|
      if @license.update(license_params)
        format.html { redirect_to @license, notice: 'License was successfully updated.' }
        format.json { render :show, status: :ok, location: @license }
      else
        format.html { render :edit }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licenses/1
  # DELETE /licenses/1.json
  def destroy
    @license.destroy
    respond_to do |format|
      format.html { redirect_to licenses_url, notice: 'License was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_license
      @license = License.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def license_params
      params.require(:license).permit(:user_id, :product_id, :price, :expiration_date, :address, :accept)
    end

    def save_pdf
      body_html = render_to_string( template: "licenses/template/_save_license.pdf.erb" )
      pdf = WickedPdf.new.pdf_from_string(
          body_html,
          orientation: 'Portrait',
          margin: { bottom: 20, top: 30 })

       # then save to a file
      save_path = Rails.root.join('pdfs',"license_#{Time.now}.pdf")
      File.open(save_path, 'wb') do |file|
        file << pdf
    end
   end
end
