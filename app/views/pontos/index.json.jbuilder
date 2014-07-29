json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :titulo, :data, :status, :solucao
  json.url ponto_url(ponto, format: :json)
end
