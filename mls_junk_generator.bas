Option Explicit
Public Sub MLS_Junk_Generator()
'generates a stream of pseudo-random numbers
'see http://steve.mylesandmyles.info/projects/mls-junk-generator for details
Dim r, ri, w, x, y, z As Single
Dim i, n As Integer
    
    Application.ScreenUpdating = False
    n = Cells(1, 3).Value
    w = Cells(2, 3).Value
    x = Cells(3, 3).Value
    y = Cells(4, 3).Value
    z = Cells(5, 3).Value

    Cells(1, 1).Value = "MLS Junk Generator Stream"

    For i = 1 To n
        r = 5.980217 * (w ^ 2) + 9.446377 * (x ^ 0.25) + 4.81379 * (y ^ 0.33) + 8.91197 * (z ^ 0.5)
        ri = r - Int(r)
        Cells(i + 1, 1).Value = Format(ri, "0.0000")
        w = x
        x = y
        y = z
        z = ri
    Next i
    Application.ScreenUpdating = True
End Sub
