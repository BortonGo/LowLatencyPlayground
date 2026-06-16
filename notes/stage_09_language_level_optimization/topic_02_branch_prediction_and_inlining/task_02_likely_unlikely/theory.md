# Теория. likely/unlikely

`[[likely]]` и `[[unlikely]]` дают компилятору информацию о вероятном path.

Они не гарантируют ускорение.

Они могут повлиять на:

- layout кода;
- fallthrough path;
- branch code generation.

Если hint не соответствует данным, он может сделать хуже.
