class MegaAnfitriao
	attr_accessor :nomes

	def initialize(nomes= "Mundo")
		@nomes = nomes
	end

	def says_hello
		if @nomes.nil?
			puts "..."
		elsif @nomes.respond_to?("each") # Se nomes responde ao método each ( each é um método que pertence a listas)
			@nomes.each do |nome| #nome é como o valor atual na iteração do for é referenciado
				puts "Ola #{nome}"
			end
		else
			puts "Ola #{@nomes}"
		end
	end

	def says_goodbye
		if @nomes.nil?
			puts "..."
		elsif @nomes.respond_to?("join")
			puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
		else
			puts "Adeus #{@nomes}. Volta em breve."
		end
	end
end

if __FILE__ == $0
	mg = MegaAnfitriao.new
	mg.says_hello
	mg.says_goodbye

	mg.nomes = "Dioguinho"
	mg.says_hello
	mg.says_goodbye

	mg.nomes = ["Dioguinho","Adalberto","Beatrice","Elis"]
	mg.says_hello
	mg.says_goodbye

	mg.nomes = nil
	mg.says_hello
	mg.says_goodbye
end