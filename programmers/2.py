#톰 제리
from fractions import Fraction #Fraction: 유리수를 분수형태로 만들어주는 함수

def cheese_steal(A, B):
    if 1 <= A < B <= 9:
        after = 1 - A/B
        f = Fraction(after).limit_denominator(B) 
        #.limit_denominator(B): 분모 최대가 B인 값 중 after와 가장 가까운 분수를 출력해줌, 없으면 분수가 지나치게 커질 수 있고 계산이 제대로 안나올 수 있다.
        print(f"{f.numerator} {f.denominator}") # 앞에것이 분자, 뒤에것이 분모 출력해주는 함수

A, B = map(int, input().split())
cheese_steal(A, B)

#단어 개수
def count(sentence):
    count2 = sentence.split()
    print(len(count2))

sentence = input()
count(sentence)