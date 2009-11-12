# FlashAlerts
module FlashAlertsHelper
	def flash_alerts
		display=false
		str = String.new
		flash.each do |key, value|
			if value && value.strip.length > 0
				str += %Q(<div class='flash_message #{key.to_s}' id='flash_#{key.to_s}'>#{value}</div>)
				display = true
			end
		end
		str = %Q(<div id='flash_message_box'>#{str}</div>)
		return display ? str : String.new
	end
end


