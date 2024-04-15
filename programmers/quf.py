N = int(input())

for i in range(N):
    stars = " " * (N-i-1) + "*" * (2*i+1)
    print(stars)