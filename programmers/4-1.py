# 나는 요리사다
a1, a2, a3, a4=map(int, input().split())
b1, b2, b3, b4=map(int, input().split())
c1, c2, c3, c4=map(int, input().split())
d1, d2, d3, d4=map(int, input().split())
e1, e2, e3, e4=map(int, input().split())

cook1=a1+a2+a3+a4
cook2=b1+b2+b3+b4
cook3=c1+c2+c3+c4
cook4=d1+d2+d3+d4
cook5=e1+e2+e3+e4

list=[cook1, cook2, cook3, cook4, cook5]
index=list.index(max(list))+1

print(index, max(list))

#수리공 항승
N, L=map(int, input().split())
leak=[]

leak = list(map(int, input().split()))
leak=sorted(leak)

if L==1:
    print(N)
else:
    count=1
    leak.sort()
    current=leak[0]
    i=1
    for i in range(len(leak)):
        if leak[i]-current>L-1:
            count+=1
            current=leak[i]
            
    print(count)