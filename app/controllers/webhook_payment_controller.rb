class WebhookPaymentController < ApplicationController
  skip_before_action :verify_authenticity_token

  def payment_received
    logger.info { params['seller_id'] }
    logger.info { params['email'] }
    logger.info { params['product_name'] }
    logger.info { params['price'] }
    render json:{}, status: :ok
  end
end
