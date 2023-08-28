REM Console only program.
REM snippet offering 2 methods for checking on what OS the code has been compiled for.
$CONSOLE:ONLY

REM Casing the _OS$ string to know what OS we are using
_ECHO "Method 1: Casing the compiler os string"
SELECT CASE _OS$
    CASE "[WINDOWS][32BIT]"
        _ECHO "Windows 32bits"
    CASE "[WINDOWS][64BIT]"
        _ECHO "Windows 64bits"
    CASE "[LINUX][32BIT]"
        _ECHO "Linux 32bits"
    CASE "[LINUX][64BIT]"
        _ECHO "Linux 64bits"
    CASE "[MACOSX][32BIT]"
        _ECHO "Mac OS X 32bits"
    CASE "[MACOSX][64BIT]"
        _ECHO "Mac OS X 64bits"
END SELECT

REM using compiler metacommands to know what OS we are using
REM this can be used in a similar way than ifdef else endif in c
_ECHO "Method 2: Using compiler metacommands"
$IF WIN THEN
    os$ = "Windows"
$END IF
$IF LINUX THEN
    os$ = "Linux"
$END IF
$IF MAC THEN
    os$ = "Mac OS X"
$END IF
$IF 32BIT THEN
    b$ = " 32bits"
$END IF
$IF 64BIT THEN
    b$ = " 64bits"
$END IF

_ECHO os$ + b$

REM Don't pause and ask to press a key but quit immediatly
SYSTEM

