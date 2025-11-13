module Main where

data Categoria = Arma | Pocao | Equipamento
               deriving (Show)

data Item = Item {
    nomeItem :: String,
    categoria :: Categoria,
    precoItem :: Double
} deriving (Show)

data CompraZelda = CompraZelda {
    itens :: [Item]
} deriving (Show)

subtotal :: [Item] -> Double
subtotal lista = sum (map precoItem lista)

calculaDesconto :: [Item] -> Double
calculaDesconto lista
    | total > 200 = total * 0.10
    | otherwise   = 0.0
    where
        total = subtotal lista

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda listaItens)
    | total > 200 = total - desconto
    | otherwise   = total + 15.0
    where
        total = subtotal listaItens
        desconto = calculaDesconto listaItens

main :: IO ()
main = do
    let masterSword = Item "Master Sword" Arma 150.0
    let hylianShield = Item "Hylian Shield" Equipamento 80.0
    let redPotion = Item "Red Potion" Pocao 20.0
    let arrows = Item "Arrows (10)" Arma 30.0

    let compra1 = CompraZelda [masterSword, hylianShield]
    let compra2 = CompraZelda [hylianShield, redPotion]
    let compra3 = CompraZelda [masterSword, redPotion, arrows]

    putStrLn "Compra 1 (Total > 200)"
    putStr "Itens: "
    print (itens compra1)
    putStr "Valor Final: "
    print (valorFinal compra1)

    putStrLn "Compra 2 (Total < 200)"
    putStr "Itens: "
    print (itens compra2)
    putStr "Valor Final: "
    print (valorFinal compra2)

    putStrLn "Compra 3 (Total = 200)"
    putStr "Itens: "
    print (itens compra3)
    putStr "Valor Final: "
    print (valorFinal compra3)
