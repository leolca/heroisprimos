---
layout: post
title: "DNA: O Código da Vida — Biologia Molecular em Quadrinhos"
author: "Dra. Patricia Lima"
categories: [stem]
tags: [biologia, dna, genetica, biologia-molecular, crispr]
image: stem-dna.jpg
---

# DNA: O Código da Vida 🧬

O que torna você *você*? A resposta cabe em **2 metros de molécula** enrolada dentro de cada uma das suas ~37 trilhões de células. Vamos decodificar!

## O que é DNA?

**DNA** = **Ácido Desoxirribonucleico**

- **Polímero** de nucleotídeos
- **Dupla hélice** (Watson & Crick, 1953 — baseado no trabalho de Rosalind Franklin)
- **4 "letras"**: A, T, C, G (Adenina, Timina, Citosina, Guanina)
- **Pareamento complementar**: A-T, C-G (pontes de hidrogênio)

```
Fita 1:  A - T - C - G - G - A - T - C
         |   |   |   |   |   |   |   |
Fita 2:  T - A - G - C - C - T - A - G
```

## Da Molécula ao Organismo

### 📖 **O Dogma Central da Biologia Molecular**

```
DNA → (Transcrição) → RNA → (Tradução) → Proteína
```

1. **Transcrição**: DNA → RNA mensageiro (mRNA)
2. **Processamento**: Remoção de íntrons, adição de cap/poly-A tail
3. **Tradução**: Ribossomo lê mRNA em **códons** (3 letras) → aminoácidos
4. **Dobramento**: Proteína assume forma 3D funcional

### 🧩 **O Código Genético** (quase universal!)

| Côdon | Aminoácido | Côdon | Aminoácido |
|-------|------------|-------|------------|
| AUG | Metionina (INÍCIO) | UUU | Fenilalanina |
| UAA, UAG, UGA | PARADA | GGG | Glicina |
| ... | ... | ... | ... |

**64 códons** → **20 aminoácidos** + início/fim = **redundância** (robustez contra mutações)

## Números Impressionantes

| Medida | Valor |
|--------|-------|
| Pares de bases no genoma humano | ~3,2 bilhões |
| Genes codificadores de proteínas | ~20.000 |
| Comprimento do DNA esticado (uma célula) | ~2 metros |
| Comprimento total (todo seu corpo) | ~100 bilhões de km (≈ 1000 viagens Terra-Sol!) |
| Diferença genética entre humanos | ~0,1% |
| Diferença humano-chimpanzé | ~1,2% |
| Genes compartilhados com banana | ~50% |

## Mutação: Erro ou Evolução?

### Tipos de mutação:
- **Substituição** (ponto): Uma base trocada → pode mudar 1 aminoácido
- **Inserção/Deleção**: Adição/remoção de bases → **frameshift** (muda tudo depois)
- **Duplicação/Inversão/Translocação**: Grandes rearranjos

### Exemplo famoso: **Anemia Falciforme**
```
Normal:   GAG → Ácido Glutâmico (hidrofílico)
Mutado:   GTG → Valina (hidrofóbico)
Resultado: Hemoglobina agrega → hemácias em foice
```
**Vantagem**: Heterozigotos resistem à malária! → **seleção balanceada**

## CRISPR-Cas9: Tesoura Molecular Programável

Descoberto como **sistema imune bacteriano** contra vírus. Adaptado para edição gênica (Doudna & Charpentier, Nobel 2020).

```python
# Pseudocódigo conceitual do CRISPR
def crispr_cas9(genoma_alvo, sequencia_guia_rna):
    # 1. gRNA liga-se à sequência complementar no DNA
    local = encontrar_complementar(genoma_alvo, sequencia_guia_rna)
    
    # 2. Cas9 corta as duas fitas (DSB - double strand break)
    cortar_dupla_fita(genoma_alvo, local)
    
    # 3. Célula repara via:
    #    a) NHEJ (non-homologous end joining) → deleções/inserções aleatórias (knockout)
    #    b) HDR (homology-directed repair) → usa template fornecido (knockin preciso)
    
    return genoma_editado
```

### Aplicações atuais:
- 🌾 **Agricultura**: Arroz resistente a seca, tomate com mais GABA
- 🏥 **Medicina**: Terapia CAR-T (câncer), edição de células tronco (doenças sanguíneas)
- 🦠 **Controle de vetores**: Mosquitos *Aedes aegypti* modificados contra dengue
- 🔬 **Pesquisa**: Modelos animais, triagem genômica em larga escala

## Epigenética: Além da Sequência

**Mesmo DNA, expressões diferentes!**

- **Metilação do DNA** (geralmente silencia genes)
- **Modificação de histonas** (acetilação = ativa, metilação = reprime)
- **RNA não-codificante** (microRNA, lncRNA)

> **Gêmeos idênticos** → mesmo DNA, epigenomas divergem com idade/ambiente.

## Atividade: "Extraia seu Próprio DNA!"

**Materiais**: Saliva, água, sal, detergente, álcool gel (frio), copo.

```
1. Cuspa no copo (+ água + pitada de sal) → lisar células
2. Adicione detergente → romper membranas (lipídios)
3. Misture suavemente → não quebrar DNA (cisalhamento)
4. Despeje álcool gel frio pela lateral → DNA precipita (branco, viscoso)
5. Observe: aquele "muco" branco é SEU código genético!
```

## No Heróis Primos

**Quark** (nossa bio-química) usa:

- **Sequenciamento portátil** (MinION) em tempo real
- **CRISPR programável** nas luvas "Cas9-Gauntlets"
- **Visualização AR** de estruturas proteicas 3D
- **Síntese de proteínas** "on-demand" para contramedidas

Na **Edição #4**, eles enfrentam um **patógeno sintético** que reescreve epigenética das vítimas. Quark precisa **reverter a metilação** em escala populacional — corrida contra o tempo!

---

**Quer se aprofundar?**
- 📖 *The Gene: An Intimate History* — Siddhartha Mukherjee
- 🎬 *Human Nature* (documentário sobre CRISPR)
- 💻 *Fold.it* — jogo cidadão para dobramento de proteínas
- 🧪 *BioBuilder* — biologia sintética para estudantes

*Se você pudesse editar um gene seu, qual seria? (Meu palpite: *DEC2* para precisar de menos sono — mutação natural existe!)* 😴

**[Próximo STEM]: Função e o Poder das Funções Matemáticas!]({{ site.baseurl }}{% post_url 2024-02-19-funcao-matematica %})** 📊