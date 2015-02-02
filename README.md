# MLS Junk Generator VBA Implementation
by Scumdog Steev / Steve Myles

License:  [MIT License](https://github.com/scumdogsteev/mls-junk-generator/blob/master/LICENSE)

About:  This is a pseudo-random number generator implemented in Excel/VBA and [R](https://github.com/scumdogsteev/mls-junk-generatR).

Project Home:  http://steve.mylesandmyles.info/projects/mls-junk-generator/

Algorithm:
```
For any seed values of w, x, y, z:
r_i = 5.980217w^2 + 9.446377x^0.25 + 4.81379y^0.33 + 8.91197z^0.5
r_i = r_i - Int(r_i) For r_i+1:
w = x
x = y
y = z
z = r_i
```

Files:

1. [mls_junk_generator1.xlsm](https://github.com/scumdogsteev/mls-junk-generator/blob/master/mls_junk_generator1.xlsm) - simple Excel implementation

2. [mls_junk_generator.bas](https://github.com/scumdogsteev/mls-junk-generator/blob/master/mls_junk_generator.bas) - VBA source for #1

3. [mls_junk_generator2.xlsm](https://github.com/scumdogsteev/mls-junk-generator/blob/master/mls_junk_generator2.xlsm) - second Excel implementation (allows for clearing of the RN stream)

4. [MLSJunkGen.bas](https://github.com/scumdogsteev/mls-junk-generator/blob/master/MLSJunkGen.bas) - VBA module for #3

Project Info:

* VBA Source last updated: 2015.01.31
* Originally posted online: 2012.07.06
* Moved to GitHub: 2015.02.01
 
