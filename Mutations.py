def mutate_string(string, position, character):
    list_str = list(string)
    list_str[position] = character
    new_list = "".join(list_str)
    return(new_list)

if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)
