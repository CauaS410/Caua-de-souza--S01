class MicroondasUnidade
  def aquecer_por(conteudo)
    puts "[Microondas] Aquecendo D-Mail: #{conteudo}..."
    puts "[Microondas] ... Enviado!"
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "[#{@hora_envio}] - #{@conteudo}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @dmails = []
  end

  def enviar_dmail
    print "Digite o conteúdo do D-Mail: "
    conteudo = gets.chomp

    print "Digite a hora de envio (ex: 10:30): "
    hora_envio = gets.chomp

    @unidade.aquecer_por(conteudo)

    novo_dmail = DMail.new(conteudo, hora_envio)
    @dmails << novo_dmail
    puts "D-Mail enviado e armazenado."
  end

  def listar_dmails(horario_corte)
    @dmails.select do |dmail|
      dmail.hora_envio > horario_corte
    end
  end
end

puts "Telefone de Microondas (SERN)"
tel_micro = TelefoneDeMicroondas.new

puts "\n[Enviando primeiro D-Mail]"
tel_micro.enviar_dmail

puts "\n[Enviando segundo D-Mail]"
tel_micro.enviar_dmail

puts "\n[Enviando terceiro D-Mail]"
tel_micro.enviar_dmail

puts "Listar D-Mails"
print "Mostrar D-Mails enviados APÓS que horas?: "
horario_corte = gets.chomp

puts "D-Mails Encontrados"
dmails_filtrados = tel_micro.listar_dmails(horario_corte)

if dmails_filtrados.empty?
  puts "Nenhum D-Mail encontrado após as #{horario_corte}."
else
  puts dmails_filtrados
end
