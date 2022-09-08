NUMS = [87, 30, 96, 53, 72, 115, 36, 55, 57, 34, 118, 113, 82, 62, 66]


def main():
    result = []
    for num in NUMS:
        result.append(num >> 1 if num & 64 == 64 else num)
    print(sum(result))


if __name__ == '__main__':
    main()
