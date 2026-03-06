dim senha as integer
dim tentativa as integer

senha = 1234

print "Digite a senha:"
input tentativa

while tentativa <> senha
  print "A senha está incorreta. Tente novamente:"
  input tentativa
wend

print "Acesso liberado!"

sleep