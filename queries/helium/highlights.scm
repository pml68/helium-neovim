(normal_type) @type.builtin

(decimal) @number
(string) @string
((char) @character
  (#match? @character "'[^'\\\n\r]?'"))
[
 (escape_sequence)
 (escape_sequence1)
] @string.escape

(value) @variable.parameter

[
 (line_comment)
 (block_comment)
] @comment

(pointer) @keyword
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
