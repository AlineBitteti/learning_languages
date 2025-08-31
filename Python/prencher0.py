n=int(input('digite a dimensao n da matriz: '))
m=int(input('digite a dimensao m da matriz: '))

matriz=[]

for i in range(n):
    matriz.append([0]*m)


for i in range(n):
    print(matriz[i])

for i in range(n):
    for j in range(m):
        print(matriz[i][j], end=" ")
    print()
