-- Prática 03 de Haskell
-- Nome: Leonardo Cargnin Krugel

-- 1) Funcao que adiciona 10 a todos os elementos de uma lista
add10toall :: [Int] -> [Int]
add10toall list = [n+10 | n <- list]


-- 2) Recebe um valor e multiplica a lista por esse valor (list comprehension)
multN' :: Int -> [Int] -> [Int]
multN' n list = [n*x | x <- list]


-- 3) Recebe um valor e multiplica a lista por esse valor (map)
multN :: Int -> [Int] -> [Int]
multN n list = map (*n) list


-- 4) Aplica a expressao (3*x+2) a uma lista (list comprehension)
applyExpr :: [Int] -> [Int]
applyExpr list = [3*x+2 | x <- list]


-- 5) Aplica a expressao (3*x+2) a uma lista (lambda+map)
applyExpr' :: [Int] -> [Int]
applyExpr' list = map (\ x -> 3*x+2) list


-- 6) Adiciona o sufixo recebido a uma lista de nomes
addSuffix :: String -> [String] -> [String]
addSuffix suffix list = [suffix ++ name | name <- list]


-- 7) Seleciona valores maiores que 5 em uma lista e produz uma nova com esses
selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x>5]


-- 8) Recebe uma lista e retorna o somatorio dos valores impares (list comprehension)
sumOdds :: [Int] -> Int
sumOdds list = sum [x | x <- list, odd x]


-- 9) Recebe uma lista e retorna o somatorio dos valores impares (filter)
sumOdds' :: [Int] -> Int
sumOdds' list = sum (filter odd list)


-- 10) Seleciona apenas valores <=20 >=50 da lista em uma nova lista
selectExpr :: [Int] -> [Int]
selectExpr list = [x | x <- list, x>=20 && x<=50]


-- 11) Conta quantos nomes na lista tem menos de 5 letras
countShorts :: [String] -> Int
countShorts list = length [name | name <- list, (length name<5)]


-- 12) Calcula a expressao (x^2/2) e cria uma lista com os valores cujo resultado é >10
calcExpr :: [Float] -> [Float]
calcExpr list = [n^2/2 | n <- list, (n^2/2)>10]


-- 13) Converte os ' ' em '-' em uma String
trSpaces :: String -> String
trSpaces str = [if c==' ' then '-' else c | c <- str]


-- 14) Cria uma nova lista com os segundo valores de uma tupla
selectSnd :: [(Int,Int)] -> [Int]
selectSnd list = [(snd x) | x <- list]


-- 15) Recebe duas listas, junta em uma tupla e retorna o somatório do produto dos valores das tuplas
dotProd :: [Int] -> [Int] -> Int
dotProd list1 list2 =  sum [(fst x) * (snd x) | x <- (zip list1 list2)]
