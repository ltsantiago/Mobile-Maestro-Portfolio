# 🚀 Automação de Testes Mobile com Maestro

[![CI/CD](https://github.com/seu-usuario/wdio/actions/workflows/actions.yml/badge.svg)](https://github.com/seu-usuario/wdio/actions)
[![Maestro](https://img.shields.io/badge/Maestro-2.0.0-blue)](https://maestro.mobile.dev/)
[![Slack](https://img.shields.io/badge/Slack-Notificações-4A154B?logo=slack)](https://slack.com/)

Bem-vindo ao meu projeto de automação de testes mobile utilizando Maestro, desenvolvido como parte do meu portfólio profissional. Este projeto demonstra minhas habilidades em automação de testes mobile, implementando boas práticas e padrões de desenvolvimento.

## 🛠️ Tecnologias e Ferramentas

- **Framework de Testes**: Maestro
- **Linguagem**: YAML para escrita dos testes
- **Padrão de Projeto**: Page Object Model (POM)
- **CI/CD**: GitHub Actions
- **Monitoramento**: Notificações no Slack
- **Versionamento**: Git

## 🏗️ Estrutura do Projeto

```
├── .github/
│   └── workflows/
│       └── actions.yml      # Configuração do CI/CD
├── .maestro/               # Testes em Maestro
│   ├── login/
│   ├── register/
│   └── swipe/
├── config.yaml             # Configuração do Maestro
└── android.wdio.native.app.v1.0.8.apk  # APK para testes
```

## 🚀 Como Executar o Projeto

### Pré-requisitos

- Node.js (versão 14+)
- Java JDK 11+
- Android Studio com Android SDK
- Maestro CLI instalado
- Dispositivo Android físico ou emulador

### Instalação

1. **Instale o Maestro CLI**
   ```bash
   curl -Ls "https://get.maestro.mobile.dev" | bash
   ```

2. **Clone o repositório**
   ```bash
   git clone https://github.com/seu-usuario/wdio.git
   cd wdio
   ```

### Executando os Testes Localmente

```bash
# Executar todos os testes
maestro test .

# Executar testes específicos (ex: login)
maestro test .maestro/login/
```

## 🔄 CI/CD com GitHub Actions

O projeto está configurado com GitHub Actions para execução automática de testes a cada push para a branch `main`. O fluxo de CI/CD inclui:

1. Build e execução dos testes no Maestro Cloud
2. Geração de relatórios de cobertura
3. Notificações no Slack com os resultados

### Configuração de Variáveis de Ambiente

Para configurar o ambiente, você precisará definir os seguintes segredos no GitHub:
- `MAESTRO_API_KEY`
- `MAESTRO_PROJECT_ID`
- `SLACK_CHANNEL`
- `SLACK_TOKEN`
- `SLACK_WEBHOOK_URL`

## 🏗️ Padrão Page Object Model (POM)

O projeto implementa o padrão POM para melhor organização e manutenção dos testes:

- **Páginas**: Cada tela do aplicativo é representada por uma classe de página
- **Componentes**: Elementos de UI reutilizáveis são armazenados separadamente
- **Fluxos**: Os fluxos de usuário são escritos de forma limpa e legível

## 📊 Relatórios

Os resultados dos testes são enviados para o Slack, incluindo:
- Status de cada caso de teste
- Screenshots em caso de falhas
- Estatísticas de execução

## 🤝 Contribuição

Contribuições são bem-vindas! Siga estes passos:

1. Faça um Fork do projeto
2. Crie uma Branch para sua Feature (`git checkout -b feature/AmazingFeature`)
3. Adicione suas mudanças (`git add .`)
4. Comite suas mudanças (`git commit -m 'Add some AmazingFeature'`)
5. Faça o Push da Branch (`git push origin feature/AmazingFeature`)
6. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Desenvolvido com ❤️ por [Seu Nome](https://github.com/seu-usuario) - Conecte-se comigo no [LinkedIn](https://linkedin.com/in/seu-perfil)
