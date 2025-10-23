module Rastreavel
end

module Perigoso
end

class Participante
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def to_s
    @nome
  end
end

class Detetive < Participante
  include Rastreavel
  attr_accessor :localizacao_atual

  def initialize(nome)
    super(nome)
    @localizacao_atual = "Desconhecida"
  end

  def obter_localizacao(hora)
    "As #{hora}, #{@nome} está em #{@localizacao_atual}."
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso
  attr_accessor :localizacao_atual

  def initialize(nome)
    super(nome)
    @localizacao_atual = "Escondido"
  end

  def obter_localizacao(hora)
    "As #{hora}, #{@nome} está em #{@localizacao_atual}."
  end

  def calcular_risco
    100
  end
end

class Cenario
  def initialize(participantes)
    @participantes = participantes
  end

  def identificar_ameacas
    @participantes.select do |participante|
      participante.respond_to?(:calcular_risco)
    end
  end
end

puts "Jogo das Sombras"

sherlock = Detetive.new("Sherlock")
print "Digite a localização atual de Sherlock: "
sherlock.localizacao_atual = gets.chomp

moriarty = MestreDoCrime.new("Moriarty")
print "Digite a localização atual de Moriarty: "
moriarty.localizacao_atual = gets.chomp

lista_de_participantes = [sherlock, moriarty]

cenario_londres = Cenario.new(lista_de_participantes)

ameacas_encontradas = cenario_londres.identificar_ameacas

puts "Alvos Perigosos no Cenário"
if ameacas_encontradas.empty?
  puts "Nenhuma ameaça detectada."
else
  puts ameacas_encontradas
end
