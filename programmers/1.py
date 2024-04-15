#1주차 기초
print('Hello World!')

#1주차 최댓값 
numbers = [int(input()) for i in range(9)]  
max_num = max(numbers) 
max_idx = numbers.index(max_num) + 1  # 파이썬 처음이 0부터 시작
print(max_num)
print(max_idx)

#정사각형
def is_square(x1, y1, x2, y2, x3, y3, x4, y4):
    distances = []
    distances.append((x1 - x2) ** 2 + (y1 - y2) ** 2)
    distances.append((x1 - x3) ** 2 + (y1 - y3) ** 2)
    distances.append((x1 - x4) ** 2 + (y1 - y4) ** 2)
    distances.append((x2 - x3) ** 2 + (y2 - y3) ** 2)
    distances.append((x2 - x4) ** 2 + (y2 - y4) ** 2)
    distances.append((x3 - x4) ** 2 + (y3 - y4) ** 2)
    
    return len(set(distances)) == 2 and max(distances) == 2 * min(distances)

# 입력 받고 결과 출력하기
T = int(input())
for i in range(T):
    x1, y1 = map(int, input().split())
    x2, y2 = map(int, input().split())
    x3, y3 = map(int, input().split())
    x4, y4 = map(int, input().split())
    
    if is_square(x1, y1, x2, y2, x3, y3, x4, y4):
        print("1")
    else:
        print("0")