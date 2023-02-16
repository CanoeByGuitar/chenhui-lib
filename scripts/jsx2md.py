import sys
import re

'''
convert every string like
<img src="/Volumes/disk2/notebooks/C++/parallel101/assets/image-20230122235653250.png" alt="image-20230122235653250" style="zoom:50%;" />
to string like
![](/Volumes/disk2/notebooks/C++/parallel101/assets/image-20230122235653250.png)
'''

file_path = "/Volumes/disk2/notebooks/C++/parallel101/notebook.md"

def jsx2md():
    with open(file_path, 'r') as file:
        text = file.read()
        # define the regular expression pattern to search for
        pattern = r'<img src="([^"]+)"[^>]*>'
        # use re.sub() to replace matches with the desired format
        result = re.sub(pattern, r'![](\g<1>)', text)

        img_regex = re.compile(pattern)
        img_matches = img_regex.findall(text)

        print(img_matches)
        print(len(img_matches))
        print(result)


def main():
    jsx2md()

if __name__ == "__main__":
    main()