var documenterSearchIndex = {"docs":
[{"location":"predicates/#Predicates","page":"Predicates","title":"Predicates","text":"","category":"section"},{"location":"predicates/","page":"Predicates","title":"Predicates","text":"Predicates are functions that return true of false.","category":"page"},{"location":"predicates/","page":"Predicates","title":"Predicates","text":"is_empty\nis_non_empty\nkeep\nkeep!\ndiscard\ndiscard!\ncompact\ncompact!\nevery\nsome\nnone","category":"page"},{"location":"predicates/#TidierIteration.is_empty","page":"Predicates","title":"TidierIteration.is_empty","text":"is_empty(x)\n\nCheck if a object has length 0.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.is_non_empty","page":"Predicates","title":"TidierIteration.is_non_empty","text":"is_non_empty(x)\n\nCheck if a object has length greater than 0.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.keep","page":"Predicates","title":"TidierIteration.keep","text":"keep(x, p)\n\nKeep the elements x_i of collection x such that p(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.keep!","page":"Predicates","title":"TidierIteration.keep!","text":"keep!(x, p)\n\nKeep the elements x_i of collection x such that p(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.discard","page":"Predicates","title":"TidierIteration.discard","text":"discard(x, p)\n\nDiscard the elements x_i of collection x such that p(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.discard!","page":"Predicates","title":"TidierIteration.discard!","text":"discard!(x, p)\n\nDiscard the elements x_i of collection x such that p(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.compact","page":"Predicates","title":"TidierIteration.compact","text":"compact(x)\n\nKeep the elements x_i of collection x such that is_non_empty(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.compact!","page":"Predicates","title":"TidierIteration.compact!","text":"compact!(x)\n\nKeep the elements x_i of collection x such that is_non_empty(x_i) is true.\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.every","page":"Predicates","title":"TidierIteration.every","text":"every(x, p)\n\nDo every x_i in x satisfies p?\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.some","page":"Predicates","title":"TidierIteration.some","text":"some(x, p)\n\nDo some x_i in x satisfies p?\n\n\n\n\n\n","category":"function"},{"location":"predicates/#TidierIteration.none","page":"Predicates","title":"TidierIteration.none","text":"none(x, p)\n\nDo none x_i in x satisfies p?\n\n\n\n\n\n","category":"function"},{"location":"maps/#Maps","page":"Mapping","title":"Maps","text":"","category":"section"},{"location":"maps/#One-variable","page":"Mapping","title":"One variable","text":"","category":"section"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"Applying one-variable functions to collections","category":"page"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"map_asis\nmap_type\nmap_float\nmap_int\nmap_bool\nmap_string\nwalk","category":"page"},{"location":"maps/#TidierIteration.map_asis","page":"Mapping","title":"TidierIteration.map_asis","text":"map_arr(x, f)\n\nApply function f to the list x and do no conversion.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map_type","page":"Mapping","title":"TidierIteration.map_type","text":"map_type(x, f, T)\n\nApply function f to the list x and convert each element with function T.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map_float","page":"Mapping","title":"TidierIteration.map_float","text":"map_float(x, f)(x, f)\n\nApply function f to the list x and convert the result to float.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map_int","page":"Mapping","title":"TidierIteration.map_int","text":"map_int(x, f)\n\nApply function f to the list x and convert the result to integer.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map_bool","page":"Mapping","title":"TidierIteration.map_bool","text":"map_bool(x, f)\n\nApply function f to the list x and convert the result to logical (boolean).\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map_string","page":"Mapping","title":"TidierIteration.map_string","text":"map_string(x, f)\n\nApply function f to the list x and convert the result to string (character).\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.walk","page":"Mapping","title":"TidierIteration.walk","text":"walk(x, f)\n\nApply function f to the list x and return nothing.\n\n\n\n\n\n","category":"function"},{"location":"maps/#Two-variables","page":"Mapping","title":"Two variables","text":"","category":"section"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"Applying two-variable functions to collections.","category":"page"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"map2_asis\nmap2_type\nmap2_float\nmap2_int\nmap2_bool\nmap2_string\nwalk2","category":"page"},{"location":"maps/#TidierIteration.map2_asis","page":"Mapping","title":"TidierIteration.map2_asis","text":"map2_asis(x, y, f)\n\nApply the two-variable function f to the objects x and y.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map2_type","page":"Mapping","title":"TidierIteration.map2_type","text":"map2_type(x, y, f, T)\n\nApply the two-variable function f to the objects x and y  and convert each element using function T.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map2_float","page":"Mapping","title":"TidierIteration.map2_float","text":"map2_dbl(x, y, f)\n\nApply the two-variable function f to the objects x and y and convert it to float.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map2_int","page":"Mapping","title":"TidierIteration.map2_int","text":"map2_int(x, y, f)\n\nApply the two-variable function f to the objects x and y and convert it to integer.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map2_bool","page":"Mapping","title":"TidierIteration.map2_bool","text":"map2_lgl(x, y, f)\n\nApply the two-variable function f to the objects x and y and convert it to boolean.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.map2_string","page":"Mapping","title":"TidierIteration.map2_string","text":"map2_chr(x, y, f)\n\nApply the two-variable function f to the objects x and y and convert it to string.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.walk2","page":"Mapping","title":"TidierIteration.walk2","text":"walk2(x, y, f)\n\nApply the two-variable function f to the objects x and y and return nothing.\n\n\n\n\n\n","category":"function"},{"location":"maps/#One-variable-and-index","page":"Mapping","title":"One variable and index","text":"","category":"section"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"Applying functions to a collection and the corresponding index of the element","category":"page"},{"location":"maps/","page":"Mapping","title":"Mapping","text":"imap_asis\nimap_type\nimap_float\nimap_int\nimap_bool\nimap_string\niwalk","category":"page"},{"location":"maps/#TidierIteration.imap_asis","page":"Mapping","title":"TidierIteration.imap_asis","text":"imap_arr(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.imap_type","page":"Mapping","title":"TidierIteration.imap_type","text":"imap_type(x, f, T)\n\nApply f to each pair (i, x_i) where x[i] = x_i and convert  it using function T.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.imap_float","page":"Mapping","title":"TidierIteration.imap_float","text":"imap_float(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i  and convert it to float.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.imap_int","page":"Mapping","title":"TidierIteration.imap_int","text":"imap_int(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i  and convert it to integer.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.imap_bool","page":"Mapping","title":"TidierIteration.imap_bool","text":"imap_bool(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i  and convert it to boolean.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.imap_string","page":"Mapping","title":"TidierIteration.imap_string","text":"imap_string(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i  and convert it to string.\n\n\n\n\n\n","category":"function"},{"location":"maps/#TidierIteration.iwalk","page":"Mapping","title":"TidierIteration.iwalk","text":"iwalk(x, f)\n\nApply f to each pair (i, x_i) where x[i] = x_i  and return nothing.\n\n\n\n\n\n","category":"function"},{"location":"modify/#Modify","page":"Modifying","title":"Modify","text":"","category":"section"},{"location":"modify/","page":"Modifying","title":"Modifying","text":"Functions to modify a collection.","category":"page"},{"location":"modify/","page":"Modifying","title":"Modifying","text":"modify\nmodify!\nmodify_if\nmodify_if!","category":"page"},{"location":"modify/#TidierIteration.modify","page":"Modifying","title":"TidierIteration.modify","text":"modify(x, f)\n\nModify a copy of x applying f to each of its elements.\n\n\n\n\n\n","category":"function"},{"location":"modify/#TidierIteration.modify!","page":"Modifying","title":"TidierIteration.modify!","text":"modify!(x, f)\n\nModify x applying f to each of its elements.\n\n\n\n\n\n","category":"function"},{"location":"modify/#TidierIteration.modify_if","page":"Modifying","title":"TidierIteration.modify_if","text":"modify_if(x, p, f)\n\nModify a copy of x applying f to each of its elements where the function p is true.\n\n\n\n\n\n","category":"function"},{"location":"modify/#TidierIteration.modify_if!","page":"Modifying","title":"TidierIteration.modify_if!","text":"modify_if!(x, p, f)\n\nModify x applying f to each of its elements where the function p is true.\n\n\n\n\n\n","category":"function"},{"location":"adverbs/#Adverbs","page":"Adverbs","title":"Adverbs","text":"","category":"section"},{"location":"adverbs/","page":"Adverbs","title":"Adverbs","text":"Adverbs are functions that modify the behaviour of a function.","category":"page"},{"location":"adverbs/","page":"Adverbs","title":"Adverbs","text":"compose\nnegate\npossibly","category":"page"},{"location":"adverbs/#TidierIteration.compose","page":"Adverbs","title":"TidierIteration.compose","text":"compose(args...)\n\nCreate the composite function of the args....\n\ncompose(f1, f2)(x) is equal to f2(f1(x)).\n\n\n\n\n\n","category":"function"},{"location":"adverbs/#TidierIteration.negate","page":"Adverbs","title":"TidierIteration.negate","text":"negate(f)\n\nCreate the negation of f.\n\n\n\n\n\n","category":"function"},{"location":"adverbs/#TidierIteration.possibly","page":"Adverbs","title":"TidierIteration.possibly","text":"possibly(f, otherwise = nothing)\n\nCreate a modified version of the function f such that it returns otherwise when f(x) is an error.\n\n\n\n\n\n","category":"function"},{"location":"#TidierIteration.jl","page":"TidierIteration.jl","title":"TidierIteration.jl","text":"","category":"section"},{"location":"","page":"TidierIteration.jl","title":"TidierIteration.jl","text":"A purrr implementation in pure Julia.","category":"page"},{"location":"","page":"TidierIteration.jl","title":"TidierIteration.jl","text":"","category":"page"},{"location":"#Index","page":"TidierIteration.jl","title":"Index","text":"","category":"section"},{"location":"","page":"TidierIteration.jl","title":"TidierIteration.jl","text":"","category":"page"}]
}
