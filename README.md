# figma-to-style-dictionary

## Descrição
A meta desse projeto é estabelecer uma conexão do front com o design system de forma que os tokens que são a unidade básica e imutável de todos os nossos componentes se mantenham consistentes com as possívels alterações do DS com o tempo, de forma agnóstica de plataforma.

## Como rodar o projeto
Crie um arquivo .env com esses dois valores, caso sinta dificuldade eu usei [esse tutorial](https://medium.com/iadvize-engineering/figma-tokens-automatically-turned-into-code-how-we-kickstarted-our-design-system-f25866c9d842#:~:text=our%20design%20system-,Part%202%3A%20Using%20the%20Figma%20API,-tldr%3B%20You%20can)
```
FIGMA_KEY=<Token pessoal do figma>
DS_KEY=<Código da URL do design system no figma>
```

Após essa configuração basta instalar as dependências com `npm i` e rodar o servidor com `npm run serve`.
Quando abrir no browser no `localhost:8080`, ao bater no endereço `/` ele irá fazer o request das informações do figma e criar os estilos na pasta `/build`.

## Dependências utilizadas
- [axios](https://axios-http.com/docs/intro)
- [express](https://expressjs.com/pt-br/)
- [style-dictionary](https://amzn.github.io/style-dictionary/#/)