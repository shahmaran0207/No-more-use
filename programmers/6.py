#도비
result = []

while True:
    data = input().split()
    letter = data[0]

    if letter == '#':
        break

    sentence = ' '.join(data[1:])

    counter = 0
    for char in sentence:
        if char.lower() == letter.lower():
            counter += 1

    result.append((letter, counter))

for letter, count in result:
    print(letter, count)
