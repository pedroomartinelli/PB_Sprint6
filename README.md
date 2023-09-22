![Imagem do WhatsApp de 2023-09-21 à(s) 22 19 35](https://github.com/pedroomartinelli/PB_Sprint6/assets/141445664/90b83e3f-6bba-4d10-8363-c9cfd048e12a)

![GitHub repo size](https://img.shields.io/github/repo-size/pedroomartinelli/PB_Sprint5)
![GitHub contributors](https://img.shields.io/github/contributors/pedroomartinelli/PB_Sprint5)
![Static Badge](https://img.shields.io/badge/Status-Development-yellow?label=Status&labelColor=black&color=yellow)
![Static Badge](https://img.shields.io/badge/Programming%20Language-Ruby3.2.2-red?logo=ruby&label=Programming%20Language&labelColor=black&color=red) 
![GitHub stars](https://img.shields.io/github/stars/pedroomartinelli/PB_Sprint5?style=social)
![GitHub forks](https://img.shields.io/github/forks/pedroomartinelli/PB_Sprint5?style=social)

# Projeto de Automação de Testes

Este projeto é uma automação de testes utilizando Cucumber, SitePrism e Capybara em Ruby 3.2.2, executado no sistema operacional Windows 10. Os testes foram criados para o site [Advantage Online Shopping](http://www.advantageonlineshopping.com/#/).

## Mapa Mental 🗺️
Este é o mapa mental criado para os fluxos de testes.
![Bugbank_mental_map](https://github.com/pedroomartinelli/PB_Sprint6/assets/141445664/b73e134d-b921-47d4-ba70-ec65211fa00f)

## Pré-requisitos ✔️

Antes de executar os testes, certifique-se de que você tenha as seguintes ferramentas e dependências instaladas em seu ambiente de desenvolvimento:

- Ruby 3.2.2: [Instalação do Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
- Bundler: `gem install bundler`
- [ChromeDriver v116.0.5845.96](https://googlechromelabs.github.io/chrome-for-testing/#stable) : [Instruções de instalação do ChromeDriver](https://sites.google.com/chromium.org/driver/)

## Instalação 👨‍🔧

1. Clone este repositório para o seu ambiente de desenvolvimento:

~~~
git clone https://github.com/seu-usuario/seu-projeto-de-automacao.git
cd seu-projeto-de-automacao
~~~


2. Instale as dependências do Ruby listadas no arquivo Gemfile executando o seguinte comando:

~~~
bundle install
~~~

## Executando os Testes 🕵️
Para executar os testes automatizados, utilize o seguinte comando:

~~~
bundle exec cucumber -p default
~~~

Este comando iniciará a execução de todos os testes Cucumber. Para a execução dos steps de testes separadamente basta usar as TAG's usadas nos arquivos ".feature" com um "-t" antes da TAG, como o exemplo abaixo:

~~~
bundle exec cucumber -p default -t@TAG
~~~

As TAG's disponiveis para esse projeto são:
* **@regression**
  * **@login**
    * **@login_credenciais_validas**
    * **@login_email_invalido**
    * **@login_senha_invalida**
    * **@login_email_em_branco**
    * **@login_senha_em_branco**
    * **@obrigatoriedade_de_campos_login**
    * **@redirecionamento_botao_requisitos**
  * **@registro**
    * **@registro_conta_sem_saldo**
    * **@registro_conta_com_saldo**
    * **@registro_em_branco**
    * **@registro_com_email_em_branco**
    * **@registro_com_nome_em_branco**
    * **@registro_com_senha_em_branco**
    * **@registro_com_confirmacao_de_senha_em_branco**
    * **@registro_email_invalido**
    * **@campos_de_senha_diferentes**
  * **@pagina_home**
    * **@acesso_transferencia**
    * **@acesso_extrato**
    * **@acesso_pagamentos**
    * **@@acesso_saque**
    * **@visualizar_saldo**
    * **@logout**
  * **@pagina_de_extrato**
    * **@visualizaçao_de_saldo**
    * **@visualização_de_transferências**
  * **@pagina_de_transferencia**
    * **@transferencia_com_sucesso**
    * **@transferencia_sem_saldo**
    * **@transferencia_com_valor_zero**
    * **@transferencia_com_valor_negativo**
    * **@transferencia_conta_inexistente**
    * **@@transferencia_valor_em_branco**



## Estrutura do Projeto 🗃️ 
* features/: Contém os arquivos de especificação em linguagem Gherkin.
* features/step_definitions/: Contém os passos de teste correspondentes às especificações.
* features/support/: Contém arquivos de suporte para configuração e utilitários.
* features/pages/: Contém classes SitePrism para representar as páginas do site.
* features/reports/: Contém relatórios e Screenshots gerados após a execução dos testes automatizados.
* Gemfile: Lista de dependências Ruby.
* README.md: Este arquivo.

## Configuração do Ambiente ⚙️
Certifique-se de configurar a pata features/support com as configurações relevantes para a execução dos testes.
* Como a URL do site de teste support/environment/prd.yml
* E as configurações do driver do navegador support/factory/env.rb

## Contribuição 🤝
Contribuições são bem-vindas! Se você quiser melhorar este projeto, siga estas etapas:

Faça um fork do projeto.
Crie uma nova branch com a sua funcionalidade: git checkout -b feature/nova-feature.
Commit suas mudanças: git commit -m 'Adicione uma nova feature'.
Envie para a branch principal: git push origin feature/nova-feature.
Abra um pull request.

## Ferramentas adicionais 🔧
Para este projeto foi utilizado o axílio do ChatGPT ![th](https://github.com/pedroomartinelli/PB_Sprint6/assets/141445664/01aebb6a-6f5d-4a4f-943c-01eba2fad321)
  na busca de métodos relacionados as tecnologias trabalhadas, agilizando a busca e leitura de documentações.

## Contato 📧
Para qualquer dúvida ou sugestão relacionada a este projeto, entre em contato:

Pedro Vieira Martinelli - pedro.martinelli.pb@compasso.com.br

[Outros Projetos](https://github.com/pedroomartinelli?tab=repositories)

## Agradecimentos 🙏

Gostaria de agradecer aos nossos mentores e mentoras que disponibilizaram do tempo para nos proporcionar o melhor suporte e aprendizado possível. São eles:

* Rafael Vescio
* Jacques de Jesus Figueredo Schmitz J.
* Daniela Maffi
* Gabriella Alves Leao

Também gostaria de agradecer a todos os colegas de turma pelas boas conversas, troca de conhecimento e suporte ao longo de todo PB. Em especial, agradecer aos colegas:

* Daniel Santin
* Gabriel Rodrigues de Lara Junqueira
* Luis Eduardo Vahl Dias
* Marina Chaves Webber

Que tiveram fundamental importância neste probjeto, prestando o suporte em momentos cruciais.
