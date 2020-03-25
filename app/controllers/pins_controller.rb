class PinsController < ApplicationController

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    @pin.save!
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  private
    def pin_params
      params.require(:pin).permit(:item_id, :influencer_id)
    end

end


#https://us-east-api.stream-io-api.com/api/v1.0/feed/carrerfy_aggregated/1/?api_key=urjm7nx58vty
#
#"https://us-east-api.stream-io-api.com/api/v1.0/feed/aggregated/123/?api_key=urjm7nx58vty"
#
#{
#  results: [],
#  next: '/api/v1.0/feed/<< feed_group >>/<< feed_id >>/?api_key=<< api_key >>&amp;id_lt=<< next_activity_id >>&amp;limit=<< activity_limit >>'
#}
#
                    