class QuotesController < ApplicationController
  def new
    @quote = QuoteRequest.new
  end

  def create
    @quote = QuoteRequest.new(quote_params)

    respond_to do |format|
      if @quote.save
        format.html { redirect_to '/', notice: I18n.t('flash_messages.successful_quote') }
      else
        format.html { render :new }
      end
    end
  end

  private
  def quote_params
    params.require(:quote_request).permit(:name, :email, :message)
  end
end
