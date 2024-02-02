# export MODULAR_HOME="$HOME/.modular"
# export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
# Para mostrar o path que se deve colocar na extensão: echo MODULAR_HOME
# dessa forma aparece o caminho correto

# para compilar o arquivo: mojo build hello-world.mojo


# struct
# structs não podem ser modificadas após a criação
# são imutáveis, diferente de class em python que são mutáveis
struct MyCoffe:
    var ingredient1: String
    var ingredient2: String

    fn __init__(inout self, ingredient1: String, ingredient2: String):
        self.ingredient1 = ingredient1
        self.ingredient2 = ingredient2

    fn dump(self):
        print("MyCoffe:", self.ingredient1, self.ingredient2)


# let é uma palavra reservada para declaração de variáveis
# é imutável, ou seja, não pode ser alterada
# (permanent data)
let x = 1

# var é uma palavra reservada para declaração de variáveis
# é mutável, ou seja, pode ser alterada
# (updating data)
var y = 2


fn do_math(x: Int, y: Int) -> Int:
    return x + y


fn do_math_2() -> Int:
    let x: Int = 1
    let y = 2
    return x + y


# Funções com parâmetros opcionais
# o parâmetro exp é opcional
# caso não seja passado o valor de exp será 2
fn pow(base: Int, exp: Int = 2) -> Int:
    return base**exp


# Funções com parâmetros variáveis
fn add(x: Int, y: Int) -> Int:
    return x + y


fn add_inout(inout x: Int, inout y: Int) -> Int:
    x = 10
    y = 20
    return x + y


#  fn add_borrowed(borrowed x: Int, borrowed y: Int) -> Int:
#     x = 25
#     y = 35
#     return x + y


# A palavra reservada fn é para funções compiladas
# que fazem uso do MLIR(framework) para compilar o código
# para o LLVM IR
# A palavra reservada def é para funções interpretadas
fn main() raises:
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

    print("do_math:", do_math(1, 2))
    print("do_math_2:", do_math_2())

    print("pow 2**3:", pow(2, 3))
    print("pow: 2**2:", pow(2))

    # struct
    let mycoffe: MyCoffe
    mycoffe = MyCoffe("milk", "coffee")
    mycoffe.dump()

    # parâmetros variáveis
    var x: Int = 3
    var y: Int = 2

    print("x:", x)
    print("y:", y)
    print("add:", add(x, y))
    # inout é para passar a referência da variável
    # e não uma cópia
    # com isso é possível alterar o valor da variável
    print("add_inout:", add_inout(x, y))
    print("x:", x)
    print("y:", y)

    # borrowed é para passar a referência da variável
    # e não uma cópia
    # com isso não é possível alterar o valor da variável

    # a funcão esta comentada pois não é possível executar
    # pois não é possível alterar o valor da variável

    # print("add_borrowed:", add_borrowed(x, y))

    # funções de string
    # contando quantos caracteres tem na string
    # a função count é uma função compilada
    let variavelString: String = "Hello, world!"
    print(String.count(variavelString, "l"))

    let a = String.split(variavelString, " ")

    for i in range(a.__len__()):
        print(a.__getitem__(i))

    let troca: String = String.replace(variavelString, "world", "mundo")
    print(troca)

    let upperTroca: String = String.toupper(troca)
    print(upperTroca)


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
