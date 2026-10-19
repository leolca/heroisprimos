# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "heroisprimos"
  spec.version       = "1.0.0"
  spec.authors       = ["Equipe Heróis Primos"]
  spec.email         = ["contato@heroisprimos.com"]

  spec.summary       = "Site do projeto Heróis Primos - STEM através de quadrinhos"
  spec.homepage      = "https://github.com/leoca/heroisprimos"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.6"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.3"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"