# S3 Bucket para armazenamento de tfstates

O Objetivo deste código terraform é criar um bucket simples e genérico.

Essa solução também acompanha um script feito em shell, para realização de import dos recursos, caso o tfstate seja perdido. Para utiliza-lo, é necessário apenas preencher as variáveis com os dados corretos e executar o script.