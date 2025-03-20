# Projeto de Automação Mobile - Appium

[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)](https://robotframework.org/)
[![Appium](https://img.shields.io/badge/Appium-0D2033?style=for-the-badge&logo=appium&logoColor=white)](https://appium.io/)

Este repositório contém a automação de testes para aplicativos móveis utilizando o Robot Framework em conjunto com a **Appium Library**. A abordagem visa garantir a qualidade de funcionalidades críticas em dispositivos Android.

## 📚 Tecnologias Utilizadas

- **Robot Framework**: Framework de automação de testes de código aberto
- **Appium Library**: Biblioteca para automação mobile
- **Appium Server**: Gerenciador de sessões de teste
- **Android SDK**: Configuração de ambientes mobile

## 🏗 Estrutura do Projeto

```
RF_appium/
├── features/
│   ├── login.robot
│   ├── checkout.robot
├── pages/
│   ├── loginPage.robot
│   ├── checkoutPage.robot
├── resources/
│   ├── app/
│   └── app_loja.apk
│   ├── lib/
│   └── __pycache__/
│   └── __init__.py
│   └── DolEnv.py
│   ├── utils/
│   └── base.resource
│   └── globalKeywords.resource
│   └── openApp.resource 
│   └── app.yaml  
└── results/
```

## 📦 Instalação

1. Clone o repositório:
```bash
git clone https://github.com/vini-franca/RF_appium.git
```

2. Instale as dependências:
```bash
# Instalação do Poetry (caso não tenha)
pip install poetry

# Instalar todas as dependências do projeto
poetry install
```

3. Instale o Appium globalmente:
```bash
npm install -g appium
```

## ⚙️ Configuração
1. Configure as variáveis de ambiente no arquivo `resources/utils/base.resource` e `resources/utils/oppenApp.resource`:
```robotframework
*** Variables ***
${PLATFORM_NAME}     android
${DEVICE_NAME}       Pixel_4_API_30
${APP_PACKAGE}       com.example.app
```

2. Inicie o servidor Appium:
```bash
appium --allow-insecure chromedriver_autodownload
```

## 🚀 Execução
Teste Único (Android):
```bash
robot features/login.robot
```

Todos os Testes (Relatório HTML):
```bash
robot --outputdir reports --log log.html --report report.html features/
```

## 📊 Geração de Relatórios
Relatórios automáticos são gerados em:
```
./results/
├── log.html
├── output.xml
└── report.html
```

## 🔧 Troubleshooting
**Problema comum**: Erro ao detectar dispositivos
**Solução**:
1. Verifique conexão ADB:
```bash
adb devices
```

2. Reinicie o servidor Appium

## 📎 Documentação
* Guia Appium
* Appium Library Documentation
* Robot Framework Mobile Testing

## 🤝 Contribuição
1. Faça um fork do projeto
2. Crie sua branch:
```bash
git checkout -b feature/nova-funcionalidade
```

3. Commit suas mudanças:
```bash
git commit -m 'Adiciona nova funcionalidade'
```

4. Push para a branch:
```bash
git push origin feature/nova-funcionalidade
```

## 📬 Contato

**⭐️ Deixe uma estrela no repositório se achou útil!**