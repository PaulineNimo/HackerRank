if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    arr_list = list(arr)
    x_list = [i for i in arr_list if i != max(arr_list)]
    print(max(x_list))
