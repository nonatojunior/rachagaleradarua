json.extract! jogo, :id, :dia, :tipo_jogo, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)