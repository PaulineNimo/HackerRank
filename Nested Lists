if __name__ == '__main__':
    score_list = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        score_list.append([name, score])
    #score_list.sort(key = lambda x: x[1]) 
    #get minimum score
    min_score = min(score_list,key=lambda x:x[1])
    #print(min_score)
    #remove from list
    score_list.remove(min_score)
    #get second min score
    min2_score = min(score_list,key=lambda x:x[1])[1]
    #filter all who have this score
    second_low=[]
    for i in score_list:
        if(i[1] == min2_score):
            second_low.append(i[0]) 
    second_low.sort()
    for i in second_low:
        print(i)
