Dado("o endereço da API para consultar os dados") do
    $uri_base = "https://viacep.com.br/ws/01001000/json/"
  end
  
  Quando("realizar uma requisição para consultar um CEP") do
    $response = HTTParty.get($uri_base)
  end
  
  Então("a API irá retornar os dados do CEP os imprimindo na tela") do
        
    #resultado esperado
    puts "cep: #{$response["cep"]}"
    puts "logradouro: #{$response["logradouro"]}"
    puts "complemento: #{$response["complemento"]}"
    puts "bairro: #{$response["bairro"]}"
    puts "localidade: #{$response["localidade"]}"
    puts "uf: #{$response["uf"]}"
    puts "unidade: #{$response["unidade"]}"
    puts "ibge: #{$response["ibge"]}"
    puts "gia: #{$response["gia"]}"
  end
  

  Quando("realizar uma requisição para consultar numero IBGE") do
    $response = HTTParty.get($uri_base)
  end
  
  Então("a API irá retornar os dados do IBGE os imprimindo na tela") do
    
    #resultado esperado
    puts "ibge: #{$response["ibge"]}"
  end


  Quando("realizar uma requisição envie um CEP invalido") do
    $response = HTTParty.post($uri_base, :body => {"cep":"000999100"})
  end
  
  Então("a API irá retornar Erro") do
    #resultado esperado
    puts "response code #{$response.code}"
  end