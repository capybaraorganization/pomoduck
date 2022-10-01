# 🦆 Pomoduck - Um pomodoro diferente!

Olá, sou um projeto voltado a devs iniciantes no mundo do compartilhamento de código. 

Para executar este projeto, é necessário ter algumas configurações de máquina!
- ter uma máquina com o Flutter 3.3 ou superior;
- possuir o Dart SDK 2.1x
- possuir um emulador ou celular conectado (Android ou IOS)*;
- vontade de executar! siga os passo abaixo!

   > em caso de não possuir um emulador,  este projeto está habilitado para executar em navegadores Chrome, porém não garantimos todas as funcionalidades. 

### Para a execução

Para executar este app, é necessário executar os seguintes comandos em um terminal (mac/linux) ou cmd (windows):

1. Abra o repositório: 
```cd pomoduck```

2. baixe as dependências:
``` flutter pub get ```

3. gere os arquivos de apoio:
``` flutter pub run build_runner build ```

> caso aconteça um erro de conflito entre os arquivos gerados e outro já existentes execute o comando: ```flutter pub run build_runner build --delete-conflicting-outputs```

4. por fim, execute o app:
```flutter run ```
