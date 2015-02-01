Attribute VB_Name = "MLSJunkGen"
Option Explicit
Public Sub MLS_Junk_Generator()
'generates a stream of pseudo-random numbers
'see http://steve.mylesandmyles.info/projects/mls-junk-generator for details
    Dim r, ri, w, x, y, z As Single
    Dim i, n As Integer
    
    Application.ScreenUpdating = False
    With ThisWorkbook.Worksheets("random numbers")
    'set the seeds
        n = .Cells(1, 4).Value
        w = .Cells(2, 4).Value
        x = .Cells(3, 4).Value
        y = .Cells(4, 4).Value
        z = .Cells(5, 4).Value
    'label the RN stream
        .Cells(1, 1).Value = "MLS Junk Generator Stream"
    'generate n RNs
        For i = 1 To n
            r = 5.980217 * (w ^ 2) + 9.446377 * (x ^ 0.25) + 4.81379 * (y ^ 0.33) + 8.91197 * (z ^ 0.5)
            ri = r - Int(r)
            .Cells(i + 1, 1).Value = Format(ri, "0.0000")
            w = x
            x = y
            y = z
            z = ri
        Next i
    End With
    Application.ScreenUpdating = True
 End Sub

Public Sub Clear_RNs()
    'clear the contents of the RN stream
    Dim row As Integer
    Application.ScreenUpdating = False
    With ThisWorkbook.Worksheets("random numbers")
        .Cells(2, 1).Select
        Selection.End(xlDown).Select
        row = ActiveCell.row
        .Range(Cells(2, 1), Cells(row, 1)).Select
        Selection.ClearContents
        .Cells(1, 1).Select
    End With
    Application.ScreenUpdating = True
End Sub
