# For loop

func process_items():
    var items = ["espada", "scudo", "poção"]

    for item in items:
        print("Item: " + item)

    for i in range(5):
        print("Número: " + str(i))

    for i in range(2, 10, 2):
        print("Número par: " + str(i))

# Loop com break e continue

func find_item():
    var items = [1,2.3,4,5]

    for item in items:
        if item == 3:
            continue
        if item == 5:
            break
        print(item)