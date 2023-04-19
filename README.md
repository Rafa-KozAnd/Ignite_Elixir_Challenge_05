<p align="center">
  <img src="http://img.shields.io/static/v1?label=STATUS&message=Concluded&color=blue&style=flat"/>
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/Rafa-KozAnd/Ignite_Elixir_Challenge_05">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/top/Rafa-KozAnd/Ignite_Elixir_Challenge_05">
  <img alt="GitHub repo file count" src="https://img.shields.io/github/directory-file-count/Rafa-KozAnd/Ignite_Elixir_Challenge_05">
  <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/Rafa-KozAnd/Ignite_Elixir_Challenge_05">
  <img alt="GitHub language count" src="https://img.shields.io/github/license/Rafa-KozAnd/Ignite_Elixir_Challenge_05">
</p>

# Ignite_Elixir_Challenge_05

Elixir challenge done with 'Rocketseat' Ignite course. ("Desafio 05 - CRUD - Refeições diárias")

# Desafio - CRUD - Refeições diárias
## 💻 Sobre o desafio

Nesse desafio, você deverá criar uma aplicação para monitoramento de consumo de alimentos durante o dia.

O schema de uma refeição deverá possuir os seguintes campos:

#Meal
{
	id: id,
	descricao: descricao,
	data: data,
	calorias: calorias
}

# Desafio - Testando a aplicação
## 💻 Sobre o desafio

Nesse desafio, você deverá criar outros testes com o objetivo de completar 100% na cobertura excoveralls. Para isso, utilize a lib do [excoveralls](https://github.com/parroty/excoveralls), adicione a dependência dele no seu mix.exs e essas configurações.

def project do
  [
    app: :excoveralls,
    version: "1.0.0",
    elixir: "~> 1.0.0",
    deps: deps(),
    test_coverage: [tool: ExCoveralls],
    preferred_cli_env: [
      coveralls: :test,
      "coveralls.detail": :test,
      "coveralls.post": :test,
      "coveralls.html": :test
    ]
    # if you want to use espec,
    # test_coverage: [tool: ExCoveralls, test_task: "espec"]
  ]
end

defp deps do
  [
    {:excoveralls, "~> 0.10", only: :test},
  ]
end
