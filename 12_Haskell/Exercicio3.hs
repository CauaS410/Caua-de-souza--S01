module Main where

data StatusEvento = Ativo | Encerrado | Cancelado
                  deriving (Show, Eq)

data Banda = Banda {
    nomeBanda :: String,
    genero :: String,
    cache :: Double
} deriving (Show)

data Evento = Evento {
    listaBandas :: [Banda],
    status :: StatusEvento
} deriving (Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0.0
custoTotalEvento (Evento bandas _)   = subtotal * 1.20
    where
        subtotal = sum (map cache bandas)

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _)      = "Nenhuma banda registrada para abertura."
bandaAbertura (Evento (b:_) _) = nomeBanda b

bandaFechamento :: Evento -> String
bandaFechamento (Evento [] _)      = "Nenhuma banda registrada para fechamento."
bandaFechamento (Evento bandas _) = nomeBanda (last bandas)

main :: IO ()
main = do
    let banda1 = Banda "The Strokes" "Indie Rock" 50000.0
    let banda2 = Banda "Arctic Monkeys" "Indie Rock" 70000.0
    let banda3 = Banda "Paramore" "Pop Punk" 60000.0

    let eventoAtivo = Evento [banda1, banda2, banda3] Ativo
    let eventoEncerrado = Evento [banda2] Encerrado
    let eventoCancelado = Evento [banda1, banda3] Cancelado

    putStrLn "Evento Ativo"
    putStr "Custo Total: "
    print (custoTotalEvento eventoAtivo)
    putStr "Banda Abertura: "
    putStrLn (bandaAbertura eventoAtivo)
    putStr "Banda Fechamento: "
    putStrLn (bandaFechamento eventoAtivo)

    putStrLn "Evento Encerrado"
    putStr "Custo Total: "
    print (custoTotalEvento eventoEncerrado)
    putStr "Banda Abertura: "
    putStrLn (bandaAbertura eventoEncerrado)
    putStr "Banda Fechamento: "
    putStrLn (bandaFechamento eventoEncerrado)

    putStrLn "Evento Cancelado "
    putStr "Custo Total: "
    print (custoTotalEvento eventoCancelado)
    putStr "Banda Abertura: "
    putStrLn (bandaAbertura eventoCancelado)
    putStr "Banda Fechamento: "
    putStrLn (bandaFechamento eventoCancelado)
