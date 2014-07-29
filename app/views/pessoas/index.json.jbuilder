json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :cpf, :uf, :cidade, :endereco, :e-mail, :matricula
  json.url pessoa_url(pessoa, format: :json)
end
