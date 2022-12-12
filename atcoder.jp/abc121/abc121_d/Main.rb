A, B = gets.split.map(&:to_i)
def xor(i)
    return 0 if i <= 0 
    return i % 4 == 0 ? 0 : 1
end
if A.odd?
    if B.even?
        puts A ^ xor(B - A - 1) ^ B
    else
        puts A ^ xor(B - A)
    end
else
    if B.even?
        puts xor(B - A) ^ B
    else
        puts xor(B - A + 1)
    end
end