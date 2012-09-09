class RoastsController < ApplicationController
	def show
		@roast = Roast.find params[:id]
		if @roast.started?
			render :action => "live"
		else
			render :action => "upcoming"
		end
	end

  def new
    @roast = Roast.new
  end
  
  def create
    @roast = Roast.create(params[:roast])
    respond_to do |format|
      if @roast.save
     
      	format.html { redirect_to @roast, :notice => 'Roast has been created.' }
        format.json { render :json => @roast, :status => :created, :location => @roast }
      else
      	format.html { render :action => "new" }
        format.json { render :json => @roast.errors, :status => :unprocessable_entity }
      end
    end
  end


  def send_text_message
    number_to_send_to = params[:phone]
    resource = params[:resource]
    name = params[:name]

    twilio_sid = "AC51cd6589c0cd6cabaf6a0390fbc47ed1";
    twilio_token = "24c2997a4cc98f58982c04c93f2b5508";
    twilio_phone_number = "9087416517";

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "Hey, come join the roast of "+name+" at: "+"www.ryfshow.herokuapp.com/roasts/"+resource
      )
      
    respond_to do |format|
      format.html { redirect_to roast_path(resource), :notice => 'Text message has been sent' }

    end
     
  end
end
