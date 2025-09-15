-- Ejercicio 8: Verificar Palíndromo
reverseNumber : Int -> Int
reverseNumber n =
    let
        helper num acc =
            if num == 0 then acc else helper (num // 10) (acc * 10 + modBy 10 num)
    in
        helper (abs n) 0

isPalindrome : Int -> Bool
isPalindrome n = abs n == reverseNumber n
-- Ejercicio 5: Máximo Común Divisor (MCD)
gcd : Int -> Int -> Int
gcd a b =
    if b == 0 then
        abs a
    else
        gcd b (a % b)
-- Ejercicio 4: Triángulo de Pascal
pascalTriangle : Int -> Int -> Int
pascalTriangle x y =
    if x == 0 || x == y then
        1
    else if x < 0 || y < 0 || x > y then
        0
    else
        pascalTriangle (x - 1) (y - 1) + pascalTriangle x (y - 1)
module Main exposing (..)

import Html exposing (Html, text)


main : Html msg
main =
    text "Hello, Elm!"


add : Int -> Int -> Int
add a b =
    a + b


multiply : Int -> Int -> Int
multiply a b =
    a * b

multiply : Int -> Int -> Int
multiply a b =
    if b == 0 then 0
    else if b == 1 then a
    else a * multiply a (b - 1)
multiply2 : Int -> Int -> Int
multiply2 a b acc =
    if b == 0 then 
    acc 
    else 
    multiply2 a (b - 1) (acc + a)
-- Función auxiliar para multiplicación con acumulador

-- Ejercicio 1: Función Potencia
power : Int -> Int -> Int
power a b =
    if b == 0 then
        1
    else if b < 0 then
        -- No se manejan potencias negativas en Int, retorna 0 por convención
        0
    else
        a * power a (b - 1)


-- Ejercicio 2: Factorial
factorial : Int -> Int
factorial n =
    if n == 0 || n == 1 then
        1
    else if n < 0 then
        0
    else
        n * factorial (n - 1)
    -- TODO: Implementar factorial
    0


-- Ejercicio 3: Fibonacci
fibonacciExponential : Int -> Int
fibonacciExponential n = if n == 0 then 0 else if n == 1 then 1 else if n < 0 then 0 else fibonacciExponential (n - 1) + fibonacciExponential (n - 2)


fibonacciLinear : Int -> Int
fibonacciLinear n = if n < 0 then 0 else fibonacciHelper n 0 1


fibonacciHelper : Int -> Int -> Int -> Int
fibonacciHelper n acc1 acc2 = if n == 0 then acc1 else if n == 1 then acc2 else fibonacciHelper (n - 1) acc2 (acc1 + acc2)


-- Ejercicio 4: Triángulo de Pascal
pascalTriangle : Int -> Int -> Int
pascalTriangle x y = if x == 0 || x == y then 1 else if x < 0 || y < 0 || x > y then 0 else pascalTriangle (x - 1) (y - 1) + pascalTriangle x (y - 1)


-- Ejercicio 5: Máximo Común Divisor (MCD)
gcd : Int -> Int -> Int
gcd a b = if b == 0 then abs a else gcd b (a % b)
gcd a b = if b == 0 then abs a else gcd b (modBy b a)


-- Ejercicio 6: Contar Dígitos
countDigits : Int -> Int
countDigits n = if abs n < 10 then 1 else 1 + countDigits ((abs n) // 10)


-- Ejercicio 7: Suma de Dígitos
sumDigits : Int -> Int
sumDigits n = if abs n < 10 then abs n else modBy 10 (abs n) + sumDigits ((abs n) // 10)


-- Ejercicio 8: Verificar Palíndromo
isPalindrome : Int -> Bool
isPalindrome n =
    -- TODO: Implementar verificador de palíndromo
    False


reverseNumber : Int -> Int
reverseNumber n =
    -- TODO: Implementar función para invertir número
    0


reverseHelper : Int -> Int -> Int
reverseHelper n acc =
    -- TODO: Función auxiliar para invertir número
    0


-- Ejercicio 9: Paréntesis Balanceados
isBalanced : String -> Bool
isBalanced str =
    -- TODO: Implementar verificador de paréntesis balanceados
    False


isBalancedHelper : List Char -> Int -> Bool
isBalancedHelper chars counter =
    -- TODO: Función auxiliar para verificar paréntesis balanceados
    False

