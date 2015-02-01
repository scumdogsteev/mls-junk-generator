# MLS Junk Generator
by Scumdog Steev / Steve Myles

License:  MIT License

About:  This is a pseudo-random number generator implemented in Excel/VBA and (soon to be) R.

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

Project Home:  http://steve.mylesandmyles.info/projects/mls-junk-generator/

* VBA Source last updated: 2015.01.31
* Originally posted online: 2012.07.06
* Moved to GitHub: 2015.02.01
