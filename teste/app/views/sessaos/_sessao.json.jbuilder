json.extract! sessao, :id, :mentor_id, :mentorado_id, :horario, :habilidade, :created_at, :updated_at
json.url sessao_url(sessao, format: :json)
