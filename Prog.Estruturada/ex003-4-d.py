for i in range(50, 301):
    if (i % 3 == 0 or i % 7 == 0) and not (i % 3 == 0 and i % 7 == 0):
        print(i)

        
