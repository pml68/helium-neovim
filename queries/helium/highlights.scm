[
 (pointer_type)
 (normal_type)
] @type.builtin

(number) @number
(string) @string

(value) @variable 

"mov" @keyword
"=" @operator

"," @punctuation.delimiter
":" @punctuation.delimiter
";" @punctuation.delimiter

(register) @constant.builtin
(variable_declaration (identifier) @variable)
(function_declaration (identifier) @function)
