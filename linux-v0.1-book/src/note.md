# Notas

---

Adicionar conteúdos:

- bash, zsh e fish

--- 

Atue como um especialista em Git e Engenharia de Software. Gere uma ou mais mensagens de commit com base nas seguintes diretrizes estritas:

1. **Divisão de Commits:** Se o diff contiver mudanças que não pertencem ao mesmo contexto ou propósito, divida-as em múltiplos commits separados e sequenciais.
2. **Conventional Commits:** Use estritamente o padrão Conventional Commits para o prefixo do título. Exemplos:
   - `feat:` para novas funcionalidades ou atualizações de código que mudam o comportamento.
   - `docs:` para qualquer alteração exclusiva em documentação (ex: README, comentários de código, docstrings).
   - `fix:` para correção de bugs.
   - `refactor:` para mudanças no código que não corrigem bugs nem adicionam funcionalidades.
   - `chore:` para atualizações de tarefas de build, pacotes, etc.
3. **Estrutura e Organização:** Cada commit deve seguir exatamente esta estrutura detalhada:
   - **Título (Scope):** Curto, no imperativo, iniciando com o tipo correto (ex: `feat(auth): adiciona validação de token`). Máximo 50 caracteres.
   - **Corpo (Body):** Uma linha em branco após o título. Liste em bullet points de forma muito organizada e detalhada *o que* foi alterado e *por que* foi alterado.
   - **Rodapé (Footer):** Se aplicável, adicione breaking changes ou IDs de issues (ex: `Closes #123`).

Por favor, mantenha as mensagens em português, de forma clara e profissional.

4. Mostrar o resultado e perguntar se desejar aplicar os commits...
