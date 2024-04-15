i = 1
while True :
    try :
        o,w = map(int,input().split())
        if o == 0 and w == 0:
            break
        while True:
            try:
                act, n = input().split()
                if w > 0 :
                    if act == 'F':
                        w += int(n)
                    if act == 'E':
                        w -= int(n)
                if w <= 0:
                    pass
                if act == '#' and n == '0':
                    break
            except:
                break
        if o*0.5 < w < o*2:
            print("%d :-)" %i)
        elif w <= 0:
            print("%d RIP" %i)
        else:
            print("%d :-(" %i)
        i += 1
    except:
        break