m=[]
k=int(input("digite k: "))
tam = 3

for i in range(tam):
    lista=[]
    for j in range(tam):
        lista.append(int(input("digite um numero: ")))
    m.append(lista)

for i in range(tam):
    for j in range(tam):
       print(m[i][j], end=" ")
    print()

print()

for i in range(tam):
        m[i][i] *= k 

for i in range(tam):
    for j in range(tam):
       print(m[i][j], end=" ")
    print()


