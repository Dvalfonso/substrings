dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (words, dict)
    my_hash = Hash.new

    if esOracion(words) 
        myDic = words.split.map { |word| word.gsub(/[\,\!]/, '') }
        
        for i in 0..(myDic.length - 1)
            for j in 0..(dict.length - 1)
                if myDic[i] == dict[j] && my_hash.key?(myDic[i])
                    #metodo que dice si la clave ya esta en el hash myHash.key?(clave)

                    my_hash [myDic[i]] += 1

                elsif myDic[i] == dict[j] && my_hash.key?(myDic[i]) == false
                
                    my_hash [myDic[i]] = 1

                end
            end
        end
    else
        my_hash = {words => 1}
    end

    my_hash
end

def esOracion (ind)
    val = false
    for i in 0..(ind.length - 1)
        if ind[i] == " " 
            val = true
        end
    end
    val
end

puts substrings("belowbelowhowhow", dictionary)