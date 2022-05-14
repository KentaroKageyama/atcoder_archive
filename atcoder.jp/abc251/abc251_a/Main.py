S = input()
ary = []
for i in range(6):
    ary.append(S[i % len(S)])
print("".join(ary))