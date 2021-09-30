from PIL import Image
import numpy as np

im = Image.open("C:/Users/Vigurt/Desktop/projektVHDL/backImagetest.bmp")
p = np.array(im)

print(p)

for i in p:
    print(i)

file1 = open("C:/Users/Vigurt/Desktop/projektVHDL/imgtoVHDLfolder/MyFile.txt","a")

for x in p:
    for y in x:
        if y == 1:
            file1.write("'1',")
        if y == 0:
            file1.write("'0',")
    file1.write("\n")
