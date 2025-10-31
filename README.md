# Mobile Test Automation with Maestro

Este projeto implementa testes de automação mobile para aplicativo WDIO em Android utilizando o Maestro, uma ferramenta poderosa para testes de interface do usuário. O foco principal é em fluxos de autenticação (login/registro) com diferentes cenários de teste.

## 🚀 Tecnologias Utilizadas

- **Maestro**: Framework de automação mobile moderno e intuitivo
- **YAML**: Linguagem de configuração para definição dos fluxos de teste
- **JavaScript**: Para scripts personalizados e lógica de teste
- **Page Objects Pattern**: Organização de elementos e fluxos em estruturas reutilizáveis
- **Git**: Controle de versão do código-fonte

## 📋 Estrutura do Projeto

```
wdio/
├── config.yaml           # Configurações globais do Maestro
├── scripts/             # Scripts JavaScript personalizados
├── tests/
│   └── E2E/
│       ├── login/       # Testes de login
│       │   ├── auth/
│       │   │   ├── failure/  # Cenários de falha no login
│       │   │   └── success/  # Cenários de sucesso no login
│       └── register/    # Testes de registro
│           ├── failure/ # Cenários de falha no registro
│           └── success/ # Cenários de sucesso no registro
└── partials/            # Componentes reutilizáveis
```

## 🛠️ Pré-requisitos

- Node.js (versão 14 ou superior)
- Maestro CLI instalado globalmente
- Android Studio (para emuladores Android)
- Java Development Kit (JDK) 11 ou superior
- Variáveis de ambiente configuradas (ANDROID_HOME, JAVA_HOME)

## ⬇️ Instalação

1. **Clone o repositório**
   ```bash
   git clone [URL_DO_SEU_REPOSITÓRIO]
   cd wdio
   ```

2. **Instale o Maestro CLI**
   ```bash
   curl -Ls "https://get.maestro.mobile.dev" | bash
   ```
   
   Ou via npm:
   ```bash
   npm install -g @maestro/cli
   ```

3. **Verifique a instalação**
   ```bash
   maestro --version
   ```

## 🚀 Como Executar os Testes

1. **Inicie o emulador Android** ou conecte um dispositivo físico com depuração USB ativada

2. **Instale o aplicativo de teste** (se ainda não estiver instalado)
   ```bash
   adb install caminho/para/seu/app.apk
   ```

3. **Execute todos os testes**
   ```bash
   maestro test
   ```

4. **Execute um fluxo específico**
   ```bash
   maestro test tests/E2E/login/auth/success/login_success.yaml
   ```

5. **Gere relatório de testes**
   ```bash
   maestro test --format junit --output results.xml
   ```

## 🏗️ Boas Práticas Implementadas

- **Organização por Funcionalidade**: Testes agrupados por funcionalidade (login, registro)
- **Separação de Cenários**: Cenários de sucesso e falha em pastas separadas
- **Reutilização de Código**: Uso de partials para componentes compartilhados
- **Dados de Teste**: Separação de dados de teste da lógica de teste
- **Nomenclatura Clara**: Nomes descritivos para arquivos e variáveis
- **Documentação**: README detalhado para facilitar a configuração e execução

## 📝 Convenções de Código

- Use YAML com indentação de 2 espaços
- Nomes de arquivos em snake_case
- Comentários em inglês para documentação
- Variáveis com nomes descritivos
- Separação clara entre configuração e execução

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nome-branch`)
3. Commit suas mudanças (`git commit -m 'Add some nome-branch'`)
4. Dê push para a branch (`git push origin feature/nome-branch`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ✉️ Contato

Seu Nome - Lucas Tiago ltsantiago88@gmail.com

Link do Projeto: [https://github.com/ltsantiago/Projeto-Mobile-Wdio-Maestro](https://github.com/ltsantiago/Projeto-Mobile-Wdio-Maestro)
