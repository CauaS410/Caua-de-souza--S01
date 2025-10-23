class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

  def preco_base=(novo_preco)
    if novo_preco.to_f > 0
      @_preco_base = novo_preco.to_f
    else
      puts "AVISO: O preço deve ser um valor positivo. Preço definido como 0."
      @_preco_base = 0.0
    end
  end

  def preco_final
    @_preco_base
  end

  def to_s
    "Drink: #{@nome}, Preço Base: $#{'%.2f' % @_preco_base}"
  end
end

class DrinkLenda < Drink
  attr_reader :anos_desde_criacao

  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao.to_i
  end

  def preco_final
    preco_base_pai = super
    bonus_por_ano = @anos_desde_criacao * 5.0
    preco_base_pai + bonus_por_ano
  end

  def to_s
    "Drink Lenda: #{@nome}, Preço Base: $#{'%.2f' % preco_base}, Anos: #{@anos_desde_criacao}"
  end
end

puts "Cadastro do Drink Lenda (Bar AfterLife)"

print "Digite o nome do drink: "
nome_drink = gets.chomp

print "Digite o preço base: "
preco_drink = gets.chomp.to_f

print "Digite os anos de criação (idade): "
idade_drink = gets.chomp.to_i

meu_drink = DrinkLenda.new(nome_drink, preco_drink, idade_drink)

puts "Detalhes do Drink Criado "
puts meu_drink 

puts "Preço Final Calculado: $#{'%.2f' % meu_drink.preco_final}"
