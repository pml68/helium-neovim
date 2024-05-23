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
"mov" @function.method.call
"=" @operator

[
 ";"
 ":"
 ","
] @punctuation.delimiter

(register) @constant.builtin
(variable_declaration (identifier) @variable)
(function_declaration (identifier) @function)
