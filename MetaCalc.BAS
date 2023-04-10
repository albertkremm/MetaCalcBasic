TITLE = METALCALC
        REM "abcef - stack 1, ghijk - stack 2, lmnop - stack 3"
        REM "r - for density, z - for steel type"

1 REM "Welcome Screen"
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT "Select the type of steel:"
        PRINT "1. Mild Steel"
        PRINT "2. Stainless Steel"
        PRINT "3. Alumunium"
        PRINT "4. Quit"
                REM "Steel type selection"
                PRINT ""
                INPUT "Select: ", z
                IF z = 1 THEN r = 7.85
                IF z = 2 THEN r = 8
                IF z = 3 THEN r = 2.7
                IF z = 4 THEN END
                        IF z < 1 THEN BEEP
                        IF z < 1 THEN GOTO 1
                        IF z > 4 THEN BEEP
                        IF z > 4 THEN GOTO 1
                
2 REM "stack1"
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT ""
        PRINT "Enter the values for the first stack"
        PRINT "______________"
        PRINT ""
        INPUT "Thick (S): ", a
                IF a <= 0 THEN BEEP
                IF a <= 0 THEN GOTO 1
        INPUT "Lenght (L): ", b
                IF b <= 0 THEN BEEP
                IF b <= 0 THEN GOTO 1
        INPUT "Width (B): ", c
                IF c <= 0 THEN BEEP
                IF c <= 0 THEN GOTO 1
        INPUT "Count: ", f
                IF f <= 0 THEN BEEP
                IF f <= 0 THEN GOTO 1
                        LET e = (a * b * c * r) / 1000000
                        PRINT "--------------"
                        PRINT ""

3 REM "second stack confirm"
CLS
        INPUT "Continue with second stack? (Y/N): ", x$
        IF x$ = "y" THEN GOTO 4 ELSE
        IF x$ = "n" THEN GOTO 100 ELSE GOTO 3

4 REM "stack 2"
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT ""
        PRINT "Enter the values for the second stack"
        PRINT "______________"
        PRINT ""
        INPUT "Thick (S): ", g
                IF g <= 0 THEN BEEP
                IF g <= 0 THEN GOTO 4
        INPUT "Lenght (L): ", h
                IF h <= 0 THEN BEEP
                IF h <= 0 THEN GOTO 4
                INPUT "Width (B): ", i
                IF i <= 0 THEN BEEP
                IF i <= 0 THEN GOTO 4
        INPUT "Count: ", j
                IF j <= 0 THEN BEEP
                IF j <= 0 THEN GOTO 4
        LET k = (g * h * i * r) / 1000000
        PRINT "--------------"
        PRINT ""

5 REM "third stack confirm"
CLS
INPUT "Continue with third stack? (Y/N): ", y$
        IF y$ = "y" THEN GOTO 6
        IF y$ = "n" THEN GOTO 100 ELSE GOTO 5
        
6 REM "stack3"
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT ""
        PRINT "Enter the values for the third stack"
        PRINT "______________"
        PRINT ""
        INPUT "Thick (S): ", l
                IF a <= 0 THEN BEEP
                IF a <= 0 THEN GOTO 6
        INPUT "Lenght (L): ", m
                IF m <= 0 THEN BEEP
                IF m <= 0 THEN GOTO 6
        INPUT "Width (B): ", n
                IF n <= 0 THEN BEEP
                IF n <= 0 THEN GOTO 6
        INPUT "Count: ", o
                IF o <= 0 THEN BEEP
                IF o <= 0 THEN GOTO 6
        LET p = (l * m * n * r) / 1000000
        PRINT "--------------"
        PRINT ""

100 REM "total"
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT ""
        PRINT "Results"
        IF z = 1 THEN PRINT "Mild Steel"
        IF z = 2 THEN PRINT "Stainless Steel"
        IF z = 3 THEN PRINT "Aluminium"
        PRINT "_______"
        PRINT ""

105 REM "results formula"
PRINT "1)"; a; "x"; b; "x"; c; "mm - "; f; "sheets - "; e * f; "kg"
IF j > 0 THEN PRINT "2)"; g; "x"; h; "x"; i; "mm - "; j; "sheets - "; k * j; "kg"
IF o > 0 THEN PRINT "3)"; l; "x"; m; "x"; n; "mm - "; o; "sheets - "; p * o; "kg"
        PRINT ""
        PRINT "It's"; f + j + o; "sheets total;"
        PRINT "Total stack weight:"; (e * f) + (k * j) + (p * o); "kg, or"; ((e * f) + (k * j) + (p * o)) / 1000; "tons"
        PRINT ""

110 REM "End Screen"
        PRINT "_________________________"
        PRINT ""
        PRINT "Thank you for using this."
        PRINT "This is my very first 'program' written in BASIC."
        PRINT "Albert Kremm, 2022 (C)"
        PRINT ""
        INPUT "Press ENTER to continue", pipiska$

150 REM Menu
CLS
        PRINT "TexMet MetalCalc 2.0"
        PRINT "Made by Albert Kremm"
        PRINT "--------------------"
        PRINT ""
                PRINT "Menu:"
                PRINT "_____"
                PRINT ""
                PRINT "1. Restart"
                PRINT "2. Quit"
PRINT ""
                INPUT "Select: ", z
                IF z = 1 THEN GOTO 1
                IF z = 2 THEN GOTO 200
                IF z < 1 THEN GOTO 150
                IF z > 2 THEN GOTO 150

200 END
