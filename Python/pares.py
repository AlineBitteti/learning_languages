m =[]
count=0
jeito2=0
for i in range(3):
    linha = []
    for j in range(3):
        linha.append(float(input(f'Digite a posicao {j+1} {i+1} da matriz ')))    
    m.append(linha)

for i in range(3):
    for j in range(3):
        if m[i][j]%2==0:
            count+=1

for linha in m:
    for j in linha:
        if(j%2)==0:
            jeito2+=1

print(jeito2)
print(count)