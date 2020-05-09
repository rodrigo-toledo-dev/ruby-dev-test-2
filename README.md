# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Instructions

To setup the application you need follow the steps inside the project:

```
bundle
yarn
rails db:drop db:create db:migrate db:seed
```

If you run the tests run

```
rake test
```

With this all the test will called and run
