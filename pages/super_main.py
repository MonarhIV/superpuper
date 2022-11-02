import json
import math

with open('lal.json', 'r') as f:
    data = json.load(f)
main_gift = ""
question = ""
clon_end = 0
max = 0
k = 0
H_p = 0
min_H_p = 1
P_B_A = 0
P_A = "(объект подошёл)/(количество подошедших объектов)"
end_P = 0


def k_0():
    global max, end_P, main_gift, k, clon_end, data
    max = 0
    for key, value in data["gifts"].items():
        end_P = value["fame"] / data["succesful_gifts"]
        if max < end_P:
            max = end_P
            main_gift = key
    clon_end = max
    print(main_gift, max)


def k_x(answer):
    global max, end_P, main_gift, k, clon_end, question
    max = 0
    for key, value in data["gifts"].items():
        clon_end = value[data["Question"][question]["number"]]["answer"][answer] /\
                    value[data["Question"][question]["number"]]["fame"] * value["fame"] / data["succesful_gifts"]
        if max < clon_end:
            max = clon_end
            main_gift = key
        clon_end = end_P
    end_P = max
    clon_end = max


def what_question():
    global H_p, end_P, data, min_H_p, question
    min_H_p = 1
    for key, value in data["Question"].items():
        H_p = -1*end_P * math.log2(end_P) * data["number_gifts"] * end_P * value["answer"]["don't know"] \
              / value["fame"] - end_P * math.log2(end_P) * data["number_gifts"] * end_P * value["answer"]["no"]\
              / value["fame"] - end_P * math.log2(end_P) * data["number_gifts"] * end_P * value["answer"]["yes"]\
              / value["fame"]
        if min_H_p > H_p:
            min_H_p = H_p
            question = key




k_0()

while end_P < 0.9:
    what_question()
    data["gifts"][main_gift][data["Question"][question]["number"]]["fame"] += 1
    data["Question"][question]["fame"] += 1
    print(question)

    answer = input()
    data["gifts"][main_gift][data["Question"][question]["number"]]["answer"][answer] += 1
    data["Question"][question]["answer"][answer] += 1
    k_x(answer)
    print(main_gift, max)

    print(end_P)
    k += 1

print(main_gift)



