# #devo tentar algo
# begin
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end
# #obter um possível erro
# rescue Exception => e
#     puts e.message
#     puts e.backtrace
# end


def soma (n1, n2)
    n1 + n2
rescue Exception => e
    puts 'erro ao executar'
end

soma('10', 2)