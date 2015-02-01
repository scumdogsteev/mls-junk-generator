# MLS Junk Generator
by Scumdog Steev / Steve Myles

License:  MIT License

About:  This is a pseudo-random number generator implemented in Excel/VBA.

Algorithm:
```
For any seed values of w, x, y, z:
r<sub>i</sub> = 5.980217w<sup>2</sup> + 9.446377x<sup>0.25</sup> + 4.81379y<sup>0.33</sup> + 8.91197z<sup>0.5</sup>
r<sub>i</sub> = r<sub>i</sub> - Int(r<sub>i</sub>) For r<sub>i+1</sub>:
w = x
x = y
y = z
z = r<sub>i</sub>
```

Project page:  http://steve.mylesandmyles.info/projects/stochastic-inventory-control/

* VBA Source last updated: 2015.01.31
* Originally posted online: 2012.07.06
* Moved to GitHub: 2015.01.31
