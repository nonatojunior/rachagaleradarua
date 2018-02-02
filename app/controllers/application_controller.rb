class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 #  require 'telegram/bot'

	# # RachaGaleraDaRuaBot
	# token = '326858150:AAHFGMG1KnGzp4BfqE-GsNby8xScy8kegRU'
	
	# Thread.new {
	# 	Telegram::Bot::Client.run(token) do |bot|
	# 	  bot.listen do |message|
	# 	    case message.text
	# 	    when '/start'
	# 	    	texto_inicial = "Olá #{message.from.first_name}, seja bem vindo!!!\nEscolha uma das opções para obter informações a respeito."
	# 		    opcoes = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w(/artilheiro /informacoes)], one_time_keyboard: true)
	# 		    bot.api.send_message(chat_id: message.chat.id, text: texto_inicial, reply_markup: opcoes)
	# 	    when '/artilheiro'
	# 	    	artilheiros = JogosJogador.artilharia
	# 	    	lista_artilheiros = artilheiros.map { |e| [].push("#{e[:jogador]} - #{e[:gol]} \n") }.flatten.join('')
	# 	      bot.api.send_message(chat_id: message.chat.id, text: "Confira a lista dos artilheiros!\n" + lista_artilheiros)
	# 	    when '/informacoes'
	# 	      bot.api.send_message(chat_id: message.chat.id, text: "Domingo teremos racha as 08:00!")
	# 	    when '/stop'
	# 	      bot.api.send_message(chat_id: message.chat.id, text: "Bye bye #{message.from.first_name}.")
	# 	    end
	# 	  end
	# 	end
	# }


end
