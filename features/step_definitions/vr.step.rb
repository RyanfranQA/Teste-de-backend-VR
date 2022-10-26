Dado('que eu possuo o endpoint para consulta') do
  @url = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
  end
  
  Quando('realizo a consulta') do
    @response = HTTParty.get(@url, verify: false)
  end
  
  Entao('valido se o campo {string} existe') do |string|
    expect(@response.body).to match(/#{string}/)
  end
  
  Entao('retorno aleatoriamente o valor chave {string}') do |string|
    @array = []
    resp = JSON.parse(@response.body)
    resp[string.to_s].each do |data|
        @array.push(data)
    end
    puts "retornando os dados #{string} -> #{@array.sample}"
    end

  Entao('o status code e {string}') do |string|
  expect(@response.code).eql? string
  end