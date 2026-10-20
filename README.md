# Heróis Primos — Site Oficial

> **Projeto STEM que ensina conceitos de Ciências, Tecnologia, Engenharia e Matemática por meio de histórias em quadrinhos.**

Este é o repositório do site oficial do **Heróis Primos**, construído com [Jekyll](https://jekyllrb.com/) usando o tema [Millennial](https://github.com/lenpaul/Millennial) adaptado, e hospedado no [GitHub Pages](https://pages.github.com/).

## 🌐 Site Online

**https://leolca.github.io/heroisprimos/**

## 📁 Estrutura do Projeto

```
heroisprimos/
├── _config.yml              # Configurações do Jekyll
├── _data/
│   └── settings.yml         # Configurações do tema (menu, social, etc.)
├── _layouts/                # Layouts das páginas
│   ├── default.html
│   ├── home.html
│   ├── post.html
│   ├── page.html
│   └── category.html
├── _includes/               # Componentes reutilizáveis
│   ├── head.html
│   ├── header.html
│   ├── footer.html
│   ├── featured-post.html
│   ├── post-date.html
│   ├── post-share.html
│   ├── related-posts.html
│   ├── google-analytics.html
│   └── disqus.html
├── _sass/                   # Estilos SCSS
│   ├── _sections-dir.scss
│   ├── _base.scss
│   ├── _layout.scss
│   └── _syntax-highlighting.scss
├── _posts/                  # Posts do blog (formato: YYYY-MM-DD-titulo.md)
├── pages/                   # Páginas estáticas
│   ├── about.md
│   ├── contact.md
│   ├── quadrinhos.md
│   ├── stem-concepts.md
│   ├── team.md
│   └── documentation.md
├── assets/
│   ├── css/
│   │   ├── main.scss        # Entry point SCSS
│   │   └── syntax.css       # Syntax highlighting
│   └── img/                 # Imagens (adicione suas imagens aqui)
├── Gemfile                  # Dependências Ruby
├── heroisprimos.gemspec     # Gem specification
├── rss-feed.xml             # RSS 2.0 feed
├── 404.md                   # Página 404 personalizada
├── index.html               # Página inicial
├── LICENSE.md               # Licença MIT
└── README.md                # Este arquivo
```

## 🚀 Como Rodar Localmente

### Pré-requisitos

- **Ruby** 2.7+ (recomendado: use [rbenv](https://github.com/rbenv/rbenv) ou [rvm](https://rvm.io/))
- **Bundler**: `gem install bundler`
- **Git**

### Passos

```bash
# 1. Clone o repositório
git clone https://github.com/leolca/heroisprimos.git
cd heroisprimos

# 2. Instale as dependências
bundle install

# 3. Rode o servidor local
bundle exec jekyll serve

# 4. Acesse http://localhost:4000
```

### Comandos Úteis

```bash
# Build para produção
bundle exec jekyll build

# Build com drafts (posts com data futura)
bundle exec jekyll serve --drafts

# Limpar cache
bundle exec jekyll clean

# Verificar links quebrados
bundle exec jekyll doctor
```

## ✍️ Como Adicionar Conteúdo

### Criar um Post (Blog/Artigo)

1. Crie arquivo em `_posts/` com nome: `YYYY-MM-DD-titulo-do-post.md`
2. Adicione *front matter*:

```yaml
---
layout: post
title: "Título do Post"
author: "Nome do Autor"
categories: [categoria1, categoria2]
tags: [tag1, tag2, tag3]
image: nome-da-imagem.jpg  # Opcional: coloque em assets/img/
---
```

3. Escreva o conteúdo em **Markdown**

### Categorias Principais

| Categoria | Descrição | Página de Listagem |
|-----------|-----------|-------------------|
| `quadrinhos` | Histórias, personagens, bastidores | `/quadrinhos` |
| `stem` | Artigos educativos profundos | `/stem-concepts` |
| `documentation` | Guias, tutoriais, documentação | `/documentation` |

### Criar uma Página Estática

1. Crie arquivo `.md` em `pages/`
2. Use `layout: page` e `permalink: /slug`

```yaml
---
layout: page
title: "Título da Página"
permalink: /slug-da-pagina
---
```

3. Adicione ao menu em `_data/settings.yml`:

```yaml
menu:
  - {name: 'Nome no Menu', url: 'slug-da-pagina'}
```

### Adicionar Imagens

1. Coloque arquivos em `assets/img/`
2. Referencie nos posts: `image: meu-arquivo.jpg`
3. No Markdown: `![Alt text]({{ site.github.url }}/assets/img/meu-arquivo.jpg)`

## ⚙️ Configuração

### Site (_config.yml)

```yaml
title: "Heróis Primos"
description: "Descrição para SEO"
author: "Leonardo Araújo"
```

### Tema (_data/settings.yml)

```yaml
menu:
  - {name: 'Menu Item', url: 'permalink'}

social:
  - {icon: 'github', link: 'https://github.com/...'}
  - {icon: 'twitter', link: 'https://twitter.com/...'}

google-ID: 'GA_MEASUREMENT_ID'  # Ou vazio para desabilitar
disqus:
  comments: false
  disqus_shortname: 'seu-shortname'
```

### Ícones Sociais

Use qualquer ícone do [Font Awesome 4.7](https://fontawesome.com/v4.7.0/icons/):
- `github`, `twitter`, `instagram`, `facebook`, `linkedin`
- `youtube`, `twitch`, `discord`, `envelope` (email)
- `rss-square`, `medium`, `dev`, `codepen`, etc.

## 🎨 Personalização Visual

### Cores Principais (_sass/_sections-dir.scss)

```scss
$brand-color: black;           // Cor principal (links, textos)
$twitter-color: #00aced;       // Cores dos ícones sociais
$instagram-color: #375989;
$github-color: #343434;
// ... outras cores
```

### Fontes (_includes/head.html)

```html
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Source+Code+Pro">
```

### Layout Responsivo

Breakpoints em `_sass/_layout.scss`:
- `$container-width: 1100px` (desktop)
- `$tablet-width: 600px`
- `$phone-width: 480px`

## 📦 Deploy no GitHub Pages

### Opção 1: Branch `gh-pages` (Recomendado)

1. Crie branch `gh-pages`:
```bash
git checkout --orphan gh-pages
git rm -rf .
# Copie arquivos buildados ou use GitHub Actions
```

2. Ou use **GitHub Actions** (arquivo `.github/workflows/jekyll.yml`):

```yaml
name: Deploy Jekyll
on:
  push:
    branches: [main]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: '3.2'
          bundler-cache: true
      - run: bundle exec jekyll build
      - uses: actions/upload-pages-artifact@v3
        with:
          path: ./_site
  deploy:
    needs: build
    runs-on: ubuntu-latest
    permissions:
      pages: write
      id-token: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - uses: actions/deploy-pages@v4
```

3. Em **Settings > Pages**: Source = "GitHub Actions"

### Opção 2: Diretório `/docs` na branch `main`

1. Configure `_config.yml`:
```yaml
baseurl: "/heroisprimos"  # Nome do repositório
```

2. Build: `bundle exec jekyll build -d docs`

3. Commit pasta `docs/` e em **Settings > Pages**: Source = "main branch /docs folder"

## 🔧 Plugins Jekyll Incluídos

| Plugin | Função |
|--------|--------|
| `jekyll-paginate` | Paginação automática do blog |
| `jekyll-sitemap` | Gera `sitemap.xml` |
| `jekyll-feed` | Gera `feed.xml` (Atom) |
| `jekyll-seo-tag` | Meta tags SEO automáticas |

## 📝 Convenções de Código

### Nomes de Arquivos
- Posts: `YYYY-MM-DD-titulo-em-kebab-case.md`
- Imagens: `kebab-case.jpg` (minúsculas, hífens)
- Páginas: `kebab-case.md`

### Front Matter Obrigatório

**Posts:**
```yaml
layout: post
title: "Título"
author: "Autor"
categories: [cat1, cat2]
tags: [tag1, tag2]
```

**Páginas:**
```yaml
layout: page
title: "Título"
permalink: /url-personalizada
```

### Markdown
- Use **kramdown** (padrão do Jekyll)
- Sintaxe: [GitHub Flavored Markdown](https://github.github.com/gfm/)
- Código: ```linguagem ``` para syntax highlighting
- Matemática: `$$...$$` (bloco) ou `$...$` (inline) via MathJax

## 🤝 Contribuindo

1. **Fork** o repositório
2. Crie branch: `git checkout -b feature/nova-funcionalidade`
3. Commit: `git commit -m 'feat: descrição da feature'`
4. Push: `git push origin feature/nova-funcionalidade`
5. Abra **Pull Request**

### Tipos de Contribuição

- 🐛 **Bug fixes** — Correções de layout, links quebrados, typos
- ✨ **Features** — Novas páginas, componentes, funcionalidades
- 📚 **Conteúdo** — Novos posts, traduções, correções factuais
- 🎨 **Design** — Melhorias visuais, acessibilidade, responsividade
- 🔧 **Infra** — CI/CD, performance, SEO, plugins

### Padrão de Commits (Conventional Commits)

```
feat: adiciona página de glossário STEM
fix: corrige link quebrado no menu mobile
docs: atualiza README com instruções de deploy
style: ajusta espaçamento no header
refactor: simplifica layout do featured-post
test: adiciona teste de links quebrados
chore: atualiza dependências do Gemfile
```

## 📄 Licença

Este projeto está licenciado sob a **MIT License** — veja [LICENSE.md](LICENSE.md) para detalhes.

O tema original **Millennial** é de [Paul Le](https://github.com/LeNPaul) sob licença MIT.

## 📞 Contato

- **Site**: https://leolca.github.io/heroisprimos/
- **GitHub**: https://github.com/leolca/heroisprimos
- **Issues**: https://github.com/leolca/heroisprimos/issues

---

**Feito com ❤️ e muito STEM pela equipe Heróis Primos** 🚀🧬⚡📊
