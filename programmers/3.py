#시험점수
info_a, math_a, scie_a, engl_a=map(int, input().split())
info_b, math_b, scie_b, engl_b=map(int, input().split())


S=info_a+math_a+scie_a+engl_a
T=info_b+math_b+scie_b+engl_b

if S==T:
    print(S)

else:
    print(max(T, S))
    
# 단어정렬
N = int(input())
k = []

for i in range(N):
    i = input()
    k.append(i)

k = list(set(k)) #set함수를 통해 중복 제거하고 리스트 형태로 변환

k.sort(key=lambda x: (len(x), x)) #길이와 사전 두 가지를 정렬기준으로 하기 위해 튜플로 묶어줌
#람다를 기준으로 정렬하기 위해 key=를 작성, 이유는 람다의 기준이 2개이기 때문(먼저 길이를 기준으로 정렬하고 동일한 것은 사전순으로 정렬)
#key=를 해주지 않으면 길이와 사전정렬 중 어떤 것을 기준으로 할 지 컴퓨터가 판단을 못해 오류발생

print(' '.join(k)) #.join함수를 통해 공백 기준으로 문자열로 변환(이전까지는 리스트 형태)