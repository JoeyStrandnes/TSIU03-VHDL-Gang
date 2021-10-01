from PIL import Image
import numpy as np

im = Image.open("X:/GitHub/TSIU03-VHDL-Gang/Software/imgGen/backImagetest.bmp")
p = np.array(im)

print(p)

for i in p:
    print(i)

file1 = open("X:/GitHub/TSIU03-VHDL-Gang/Software/imgGen/ImageOutput.txt","a")

file1.write("Constant_pic <= (")

for x in p:
    
    for y in x:
        if y == 0:
            file1.write("'1',")
        if y == 1:
            file1.write("'0',")

file1.write(");")