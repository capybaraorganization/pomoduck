# 🦆 Pomoduck - Um pomodoro diferente!
## Arquitetura

Olá, sou um projeto voltado a devs iniciantes no mundo do compartilhamento de código. 
Aqui estão algumas informações necessárias para o meu desenvolvimento.

## Estrutura de repositorios

- libs : (pasta raiz do meu projeto)
  - data (arquivos de database do app)
    - remote (acesso ao banco de dados remoto do app)
    - repositories (funcionalidades de acessos a dados do app)
  - domain
    - api (arquivos de conexão com o api)
    - core (conversores, emulators, e arquivos de acesso ao sistema)
  - screen
    - (aqui será todas as telas do app, dividas por entidades)
  - utils
    - common (arquivos de utilização comum em todo o app)
    - style (arquivos estáticos de estilização)
    - widgets (arquivos comuns de widgets em todo o app)

## Pacotes

Um pouco sobre a escolha dos pacotes que eu utilizo
 - [build_runner](https://pub.dev/packages/build_runner) - um gerador de código auxiliar para os pacotes que necessitam;
 - [mobx](https://pub.dev/packages/mobx) - gerenciador de estados
 - [sqflite](https://pub.dev/packages/sqflite) - banco de dados local simplório para o app



