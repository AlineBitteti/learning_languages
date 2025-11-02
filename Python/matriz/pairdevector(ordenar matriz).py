m=[]

for i in range(2):
    linha=[]
    linha.append(str(input("Qual nome:  ")))
    linha.append(int(input("Qual idade: ")))
    m.append(linha)

menor = 0

for i in range(len(m)):
    if m[i][1] < m[menor][1]:
        menor = i

for i in m:
    print(i)

print(f'A pessoa mais nova é {m[menor][0]} ')