class ContatoMailer < ApplicationMailer

	def contact_email(request)
		@recipient = request.email	
		@request = request		
		mail(to: "thiagoyama@gmail.com", subject: "Orçamento | capitalgastronomica.com.br")
	end

end
