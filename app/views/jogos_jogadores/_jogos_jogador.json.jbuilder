json.extract! jogos_jogador, :id, :jogo_id, :jogador_id, :gol, :cota, :created_at, :updated_at
json.url jogos_jogador_url(jogos_jogador, format: :json)