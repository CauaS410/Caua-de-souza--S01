class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "A subclasse '#{self.class}' deve implementar o método 'tocar_partitura'"
  end

  def to_s
    "#{@nome} (#{@instrumento})"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está tocando as teclas da peça '#{peca}'."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está friccionando as cordas na peça '#{peca}'."
  end
end

class Maestro
  def initialize(musicos)
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "Maestro: Atenção! Iniciando ensaio da peça: #{peca}! ---"
    @musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
    puts "Ensaio finalizado"
  end

  def mudar_foco(estado)
    @musicos.map do |musico|
      "#{musico.nome} agora está #{estado}!"
    end
  end
end

kousei = Pianista.new("Kousei")
kaori = Violinista.new("Kaori")
takeshi = Pianista.new("Takeshi")
emi = Pianista.new("Emi")

lista_de_musicos = [kousei, kaori, takeshi, emi]

maestro = Maestro.new(lista_de_musicos)

print "Maestro, qual peça devemos ensaiar? "
peca_para_tocar = gets.chomp

maestro.iniciar_ensaio(peca_para_tocar)

puts "\n--- Maestro: Mudança de foco! ---"
mensagens_foco = maestro.mudar_foco("Concentrado")

puts mensagens_foco
