import base64
import sys

result = base64.b64encode(bytes(sys.argv[1], 'utf-8'))
print(result)
