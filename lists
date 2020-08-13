if __name__ == '__main__':
    N = int(input())
    ini_list = []
    for i in range(N):
        eval_val = input().split()
        com = eval_val[0]
        vals = eval_val[1:]
        if com !="print":
            com += "("+ ",".join(vals) +")"
            eval("ini_list."+com)
        else:
            print(ini_list)
