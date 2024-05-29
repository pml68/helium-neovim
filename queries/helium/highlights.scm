(normal_type) @type.builtin

(decimal) @number
(string) @string
(escape_sequence) @string.escape

(value) @variable.parameter

[
 (line_comment)
 (block_comment)
] @comment

[
 (pointer)
 "#target"
] @keyword
(endian) @attribute.builtin
[
 (hlt_statement)
 "MOV"
 "JMP"
 "ADD"
 "BNC"
] @function.method.call
"=" @operator

[
 ";"
 ":"
 ","
 "("
 ")"
] @punctuation.delimiter

(register) @constant.builtin
(variable_declaration (identifier) @variable)
(function_declaration (identifier) @function)
(jmp_statement (identifier) @function)
(bnc_statement (identifier) @function)
