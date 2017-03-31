from typing import List

def square(num: int) -> int:
    """returns the square of a number"""
    return num*num

def list_sum(myList: List[int]) -> int:
    """
    returns the sum for a given list
    """
    sumX = 0
    for num in myList:
        sumX += num
    return sumX


def list_sort(mylist: List[int]) -> List[int]:
    for i in range(len(mylist) - 1):
        for j in range(i, len(mylist)):
            if(mylist[i] > mylist[j]):
                temp = mylist[i]
                mylist[i] = mylist[j]
                mylist[j] = temp
    return mylist


def primesTill(num: int) -> List[int]:
    primeList = []
    if(num <= 1):
        return primeList
    if(num > 1):
        primeList.append(2)
    for i in range(2, num + 1):
        j = 0
        for j in range(2, i):
            if(i % j == 0):
                break
        if(j == i - 1):
            primeList.append(i)
    return primeList
