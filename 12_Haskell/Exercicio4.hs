module Main where

data Status = EmAndamento | Finalizado | Cancelado
            deriving (Show, Eq)

data Servico = Servico {
    nome :: String,
    tipo :: String,
    precoBase :: Double
} deriving (Show)

data Atendimento = Atendimento {
    listaServicos :: [Servico],
    statusAtendimento :: Status
} deriving (Show)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual servicos
    | nServicos > 3 && totalComBonus > 500 = totalComBonus * 0.90
    | nServicos > 3                       = totalComBonus
    | sub > 500                           = sub * 0.90
    | otherwise                           = sub
    where
        sub = sum (map precoBase servicos)
        nServicos = length servicos
        totalComBonus = sub * 0.75

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
    | status == Cancelado = 0.0
    | otherwise           = bonusEspiritual servicos

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento [] _) = "Nenhum serviço no atendimento."
descricaoPrimeiroServico (Atendimento (s:_) _) = (nome s) ++ " (" ++ (tipo s) ++ ")"

main :: IO ()
main = do
    let banhoErvas = Servico "Banho de Ervas" "Banho" 80.0
    let massagemPedras = Servico "Massagem C. Pedras" "Massagem" 150.0
    let banqueteLuz = Servico "Banquete de Luz" "Banquete" 300.0
    let limpezaAura = Servico "Limpeza de Aura" "Especial" 200.0

    let at1 = Atendimento [banhoErvas, massagemPedras] Finalizado
    let at2 = Atendimento [banhoErvas, massagemPedras, limpezaAura, banhoErvas] Finalizado
    let at3 = Atendimento [banqueteLuz, limpezaAura, massagemPedras] EmAndamento
    let at4 = Atendimento [banqueteLuz, banqueteLuz, limpezaAura, banhoErvas] Finalizado
    let at5 = Atendimento [banqueteLuz, massagemPedras] Cancelado

    putStrLn "--- Atendimentos Casa de Banhos ---"
    
    putStrLn "\nAtendimento 1 (Normal)"
    putStr "Primeiro Servico: "
    putStrLn (descricaoPrimeiroServico at1)
    putStr "Valor Final: "
    print (valorFinalAtendimento at1)

    putStrLn "\nAtendimento 2 (>3 servicos)"
    putStr "Primeiro Servico: "
    putStrLn (descricaoPrimeiroServico at2)
    putStr "Valor Final: "
    print (valorFinalAtendimento at2)

    putStrLn "\nAtendimento 3 (>500)"
    putStr "Primeiro Servico: "
    putStrLn (descricaoPrimeiroServico at3)
    putStr "Valor Final: "
    print (valorFinalAtendimento at3)
    
    putStrLn "\nAtendimento 4 (>3 servicos E total > 500)"
    putStr "Primeiro Servico: "
    putStrLn (descricaoPrimeiroServico at4)
    putStr "Valor Final: "
    print (valorFinalAtendimento at4)
    
    putStrLn "\nAtendimento 5 (Cancelado)"
    putStr "Primeiro Servico: "
    putStrLn (descricaoPrimeiroServico at5)
    putStr "Valor Final: "
    print (valorFinalAtendimento at5)
