fn exp(x: Float32) -> Float32:
    let e: Float32 = 2.718281828459045
    return e.__pow__(x)


fn sigmoid(x: Float32) -> Float32:
    return 1 / (1 + exp(-x))


fn main():
    let inputs = SIMD[DType.float32, 2](0.7, -0.3)
    let weights = SIMD[DType.float32, 2](0.1, 0.8)
    let bias: Float32 = -0.1

    let x = inputs.__mul__(weights)
    let output = sigmoid(x.__getitem__(0).__add__(x.__getitem__(1)).__add__(bias))

    print(output)
