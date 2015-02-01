# MLS Junk Generator
by Scumdog Steev / Steve Myles

License:  MIT License

About:  This is a pseudo-random number generator implemented in Excel/VBA and (soon to be) R.

Algorithm:
```
For any seed values of w, x, y, z:
r~i~ = 5.980217w^2^ + 9.446377x^0.25^ + 4.81379y^0.33^ + 8.91197z^0.5^
r~i~ = r~i~ - Int(r~i~) For r~i+1~:
w = x
x = y
y = z
z = r<sub>i</sub>
```

Project page:  http://steve.mylesandmyles.info/projects/stochastic-inventory-control/

* VBA Source last updated: 2015.01.31
* Originally posted online: 2012.07.06
* Moved to GitHub: 2015.01.31
