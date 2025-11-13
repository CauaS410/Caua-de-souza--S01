module Main where

data Status = Aberto | Entregue | Cancelado
            deriving (Show, Eq)

data Bebida = Bebida {
    nome :: String,
    tipo :: String,
    preco :: Double
} deriving (Show)

data Pedido = Pedido {
    listaBebidas :: [Bebida],
    statusPedido :: Status
} deriving (Show)

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido _ Cancelado) = 0.0
valorTotalPedido (Pedido bebidas _)   = sum (map preco bebidas) + 5.0

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _)     = "O pedido não contém bebidas."
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
    let cafe = Bebida { nome = "Café Coado", tipo = "Café", preco = 8.50 }
    let suco = Bebida { nome = "Suco de Laranja", tipo = "Suco", preco = 10.00 }
    let cha  = Bebida { nome = "Chá de Hortelã", tipo = "Chá", preco = 7.00 }

    let pedido1 = Pedido { listaBebidas = [cafe, suco], statusPedido = Aberto }
    let pedido2 = Pedido { listaBebidas = [cha], statusPedido = Cancelado }
    let pedido3 = Pedido { listaBebidas = [], statusPedido = Entregue }

    putStrLn "Totais dos Pedidos"
    print (valorTotalPedido pedido1)
    print (valorTotalPedido pedido2)
    print (valorTotalPedido pedido3)

    putStrLn "Primeiras Bebidas"
    putStrLn (primeiraBebida pedido1)
    putStrLn (primeiraBebida pedido2)
    putStrLn (primeiraBebida pedido3)
