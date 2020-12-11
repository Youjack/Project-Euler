function Euler1()
    sum = 0
    for i in 1:999999
        if i % 3 == 0 || i % 5 == 0
            sum += i
        end
    end
    sum
end

r = @time result = Euler1()
println(r)
# 0.004617 seconds (1 allocation: 16 bytes)
# 233333166668