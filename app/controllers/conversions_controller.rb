class ConversionsController < ApplicationController
  def index
    @result = params[:result]
  end

  def new
    @dimensions = Dimension.all
    @conversion = Conversion.new
    @units = Unit.all
    @result = params[:result]
  end

  def create
    @conversion = Conversion.find_by(conversion_params.except(:value))
    if @conversion
      @conversion.value = conversion_params[:value]
      @result = @conversion.convert_value
    else
      flash[:alert] = "Invalid conversion parameters"
    end
    redirect_to conversions_path(result: @result)
  end

  private
  
  def conversion_params
    params.require(:conversion).permit(:value, :source_unit_id, :target_unit_id, :dimension_id)
  end
end
