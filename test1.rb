def check(input)
    hash= {}
    arr = []
    input.each do |ele|
        hash["#{ele[:"age"]}"] = []
    end
    hash.each do |key, value|
        arr1 = []
        input.each do |ele|
            if key.to_i == ele[:"age"]
                arr1 << ele
            end
        end
        hash["#{key}"] = arr1
    end
    hash
end

users = [{age: 20}, {age: 25}, {age: 20}, {age: 25}, {age: 15}]
check(users)
