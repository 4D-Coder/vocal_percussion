
[1mFrom:[0m /workspaces/vocal_percussion/spec/linked_list_spec.rb:54 :

    [1;34m49[0m:     describe [31m[1;31m"[0m[31m#to_string[1;31m"[0m[31m[0m [32mdo[0m
    [1;34m50[0m:       it [31m[1;31m"[0m[31mgenerates a string of all the elements in the list, separated by spaces[1;31m"[0m[31m[0m [32mdo[0m
    [1;34m51[0m:         list.append([31m[1;31m"[0m[31mbeep[1;31m"[0m[31m[0m)
    [1;34m52[0m:         list.append([31m[1;31m"[0m[31mboop[1;31m"[0m[31m[0m)
    [1;34m53[0m:         list.append([31m[1;31m"[0m[31mbop[1;31m"[0m[31m[0m)
 => [1;34m54[0m:         require [31m[1;31m'[0m[31mpry[1;31m'[0m[31m[0m; binding.pry
    [1;34m55[0m:         expect(list.to_string).to eq([31m[1;31m"[0m[31mbeep boop bop[1;31m"[0m[31m[0m)
    [1;34m56[0m:       [32mend[0m
    [1;34m57[0m: 
    [1;34m58[0m:       it [31m[1;31m"[0m[31mreturns message when list has no data[1;31m"[0m[31m[0m [32mdo[0m
    [1;34m59[0m:         expect(list.to_string).to eq [31m[1;31m"[0m[31mList empty![1;31m"[0m[31m[0m

