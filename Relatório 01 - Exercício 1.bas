dim n1 as integer
dim n2 as integer
dim n3 as integer
dim p1 as integer
dim p2 as integer
dim p3 as integer
dim total as double


print "Digite a primeira nota:"
input n1
print  "Digite o peso da primeira nota:"
input p1

print "Digite a segunda nota:"
input n2
print "Digite o peso da segunda nota:"
input p2

print "Digite a terceira nota:"
input n3
print "Digite o peso da terceira nota:"
input p3

total = (n1*p1 + n2*p2 + n3*p3) / (p1 + p2 + p3)

if total >= 70 then
  print "Você foi aprovado direto!"
else
  print "Você foi reprovado direto!"
end if
sleep