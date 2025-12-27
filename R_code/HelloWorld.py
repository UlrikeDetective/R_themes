print("Hello World")

import re

# Beispiel-HTML mit Error-Messages
html_content = """
<html>
<body>
    <h1>Error Messages</h1>
    <ul>
        <li>Error 404: Page not found</li>
        <li>Error 500: Internal Server Error</li>
        <li>Warning: Invalid input</li>
        <li>Error 403: Forbidden</li>
    </ul>
</body>
</html>
"""

# Definiere den regulären Ausdruck, den du suchen möchtest
pattern = r'Error \d{3}: .*'

# Verwende match, um den regulären Ausdruck auf den Anfang der Zeichenkette anzuwenden
matches = re.match(pattern, html_content)

# Überprüfe, ob ein Match gefunden wurde
if matches:
    print("Match gefunden:", matches.group())

else:
    print("Kein Match gefunden")

num_list = [33, 42, 5, 66, 77, 22, 16, 79, 36, 62, 78, 43, 88, 39, 53, 67, 89, 11]

# 1. Print all values in sequential order
for num in num_list:
    print(num)

# 2. Print numbers greater than 45
for num in num_list:
    if num > 45:
        print("Over 45")
    else:
        print("Under 45")

# 3. Print number 36 and its index
for index, num in enumerate(num_list):
    if num == 36:
        print('Number found at position:', index)
        break

# 4. Count the iterations
count = 0
for num in num_list:
    count += 1

# 5. Print the count
print(count)
