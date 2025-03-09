# DevactionApp

Este é o aplicativo oficial da [Devaction](https://devaction.com.br), uma plataforma inovadora para gestão de ações e projetos. Este README fornecerá todas as informações necessárias para configurar, desenvolver e implantar o DevactionApp.

## Iniciando o Servidor Phoenix

Para iniciar o servidor Phoenix:

* Execute `mix setup` para instalar e configurar as dependências.
* Inicie o endpoint Phoenix com `mix phx.server` ou dentro do IEx com `iex -S mix phx.server`.

Agora você pode visitar [`localhost:4000`](http://localhost:4000) no seu navegador.

Pronto para rodar em produção? Por favor, [consulte nossos guias de implantação](https://hexdocs.pm/phoenix/deployment.html).

## Padrões de Código

Para manter a qualidade e a consistência do código, seguimos os padrões recomendados pela comunidade Elixir. Certifique-se de que seu código está formatado e sem problemas antes de enviar um pull request.

## Integração Contínua

Este projeto utiliza GitHub Actions para automatizar a verificação de testes, segurança, linting e formatação. Para garantir que todas as verificações passem, certifique-se de:

1. **Testes e Cobertura:** Configure os testes utilizando `ExCoveralls` e garanta que todos os testes passem com cobertura adequada.
2. **Segurança:** Utilize `Sobelow` para verificar problemas de segurança no código.
3. **Linting:** Utilize `Credo` para manter a qualidade do código.
4. **Formatação:** Assegure que o código esteja formatado corretamente utilizando `mix format`.
5. **Dialyzer:** Utilize `Dialyxir` para análise de tipos estática.

### Dependências Principais

Este projeto utiliza as seguintes dependências principais:

- **Elixir**: 1.18
- **Phoenix**: 1.17
- **PostgreSQL**: 16
- **Credo**: Para análise estática de código
- **Dialyxir**: Para análise de tipos com Dialyzer
- **Sobelow**: Para verificação de segurança
- **ExCoveralls**: Para cobertura de testes

## Configuração do Formatter Automático no PHPStorm

Para configurar o formatter do Elixir para ser executado automaticamente toda vez que você salvar um arquivo no PHPStorm, siga os passos abaixo:

1. **Instale o plugin "File Watchers":**
    - Abra o PHPStorm.
    - Vá para `File > Settings` (ou `PHPStorm > Preferences` no macOS).
    - Selecione `Plugins` no menu à esquerda.
    - Pesquise por "File Watchers" na barra de busca.
    - Encontre o plugin "File Watchers" e clique em `Install`.
    - Reinicie o PHPStorm para concluir a instalação.

2. **Configurar o File Watcher para o Formatter:**
    - Vá para `File > Settings` (ou `PHPStorm > Preferences` no macOS).
    - Selecione `Tools` no menu à esquerda e clique em `File Watchers`.
    - Clique no ícone `+` para adicionar um novo File Watcher e selecione `Custom`.

3. **Configurar o File Watcher:**
    - **Name:** Elixir Formatter
    - **File Type:** Elixir language file
    - **Scope:** Current File
    - **Program:** `/home/alex/.asdf/shims/mix` (ou o caminho apropriado que você encontrou com `which mix`)
    - **Arguments:** `format $FilePathRelativeToProjectRoot$`
    - **Output Paths:** Deixe em branco.

   **Advanced Options:**
    - **Working Directory:** `$ProjectFileDir$`
    - **Environment variables:** Deixe em branco, a menos que você precise de variáveis específicas para o ambiente de execução.
    - **Auto-save edited files to trigger the watcher:** Deixe marcado.
    - **Trigger the watcher on external changes:** Deixe marcado.
    - **Trigger the watcher regardless of syntax errors:** Opcional, depende de sua preferência.
    - **Create output file from stdout:** Deixe desmarcado.
    - **Show console:** Escolha `On error` para evitar muita saída no console ou `Always` se você preferir ver todas as saídas do comando.
    - **Output filters:** Deixe em branco.

4. **Confirmar e Aplicar as Configurações:**
    - Clique em `Apply`.
    - Clique em `OK`.

5. **Verificar a Execução Automática:**
    - Abra um arquivo Elixir no seu projeto.
    - Edite e salve o arquivo.
    - Verifique se o formatter está sendo executado automaticamente e formatando o código conforme configurado.

## Learn More

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

![Phoenix Framework](https://raw.githubusercontent.com/phoenixframework/phoenix/master/priv/static/images/phoenix.png)
