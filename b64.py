import base64
import sys

word = input("What do you mean?\n")
result = base64.b64encode(bytes(word, 'utf-8'))
print(result)
