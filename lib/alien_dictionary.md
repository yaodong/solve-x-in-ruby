# Alien Dictionary

There is a new alien language which uses the latin alphabet. 
However, the order among letters are unknown to you. 
You receive a list of non-empty words from the dictionary, 
where words are sorted lexicographically by the rules of this new language. 
Derive the order of letters in this language.

## Example

Example 1:

    Input：["wrt","wrf","er","ett","rftt"]
    Output："wertf"
    Explanation：
    from "wrt"and"wrf" ,we can get 't'<'f'
    from "wrt"and"er" ,we can get 'w'<'e'
    from "er"and"ett" ,we can get 'r'<'t'
    from "ett"and"rftt" ,we can get 'e'<'r'
    So return "wertf"

Example 2:

    Input：["z","x"]
    Output："zx"
    Explanation：
    from "z" and "x"，we can get 'z' < 'x'
    So return "zx"

