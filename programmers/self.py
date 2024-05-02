# -*- coding: utf-8 -*-
# UTF-8 encoding when using korean

words = []

def create_words(lev, s):
	global words
	VOWELS = ['A', 'E', 'I', 'O', 'U']
	words.append(s)
	for i in range(0, 5):
		if lev < 5:
			create_words(lev, s + VOWELS[i]) #lev에 +1을 붙여주지 않을 경우 무한히 자기 자신을 호출하게 됨 → create_words는 자기 자신임 → 증가시키지 않으면 if문을 빠져나가는 것이 불가함

def solution(word):
	global words
	words = []
	answer = 0
	create_words(0, '')
	for idx, i in enumerate(words):
		if word == i:
			answer = idx
			break
	return answer