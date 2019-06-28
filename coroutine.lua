
-- 1. use coroutine
co = coroutine.create(
    function(i)
        print(i);
    end
)


print(coroutine.status(co))
coroutine.resume(co, 1) --1
print(coroutine.status(co))


print("---------")

-- 2. use coroutine
co = coroutine.wrap(
    function(i)
        print(i);
    end
)

co(2)

print("---------")

co2 = coroutine.create(
    function ()
        for i = 1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  -- running
                print(coroutine.running())  -- thread:xxxx
            end
            coroutine.yield()
        end
    end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)
print(coroutine.status(co2)) --suspended
print(coroutine.running())
print("---------------")


