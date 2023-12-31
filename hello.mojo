# export MODULAR_HOME="$HOME/.modular"
# export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
# Para mostrar o path que se deve colocar na extensão: echo MODULAR_HOME
# dessa forma aparece o caminho correto

# para compilar o arquivo: mojo build hello-world.mojo


# A palavra reservada fn é para funções compiladas
# que fazem uso do MLIR(framework) para compilar o código
# para o LLVM IR
# A palavra reservada def é para funções interpretadas
fn main():
    print("Hello, world!")
    print(x + y)

    # está como let pois nunca será modificado
    # o proprio compilador irá otimizar o código
    # e irá avisar para fazer essa modificação de var para let
    let box1: String
    box1 = "box1"
    print(box1)

    let box2: Int
    box2 = 2
    print(box2)

    # aqui utilizei var por a variável é mutável
    var box3: String
    box3 = "box3"
    box3 = "box3 updated"
    print(box3)


# Estruturas otimizadas para o LLVM IR
# A palavra reservada struct é para estruturas compiladas
# fazem serialização e desserialização de dados
# o que torna efieente para transferência de dados


# Concorrencia e paralelismo
# As palavras reservadas async e await são para funções
# assíncronas e paralelas
# dessa forma é possível executar várias tarefas ao mesmo tempo
# sem bloquear o fluxo de execução principal

# Decoradores de funções
# @jit é um decorador é para compilar funções em tempo de execução(runtime)
# @graph converte a função em um grafo de fluxo de dados para ser executado


# let é uma palavra reservada para declaração de variáveis
# é imutável, ou seja, não pode ser alterada
# (permanent data)
let x = 1

# var é uma palavra reservada para declaração de variáveis
# é mutável, ou seja, pode ser alterada
# (updating data)
var y = 2
