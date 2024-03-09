
PROGRAM MAIN
IMPLICIT NONE

INTEGER :: I
INTEGER :: PRINT_MADE
INTEGER :: ITERATIONS = 100

DO I = 1, ITERATIONS

PRINT_MADE = 0
CALL CHECK_ARRAY( I )

END DO

CONTAINS

SUBROUTINE CHECK_ARRAY ( NUMBER )

INTEGER :: I
INTEGER :: NUMBER
INTEGER :: NUMBERS( 10 )
CHARACTER ( LEN = 20 ) :: WORDS( 10 ) = ''

CHARACTER :: FIRST_LETTER
INTEGER :: EOW

NUMBERS( 1 ) = 3
NUMBERS( 2 ) = 5

WORDS( 1 ) = "FIZZ"
WORDS( 2 ) = "BUZZ"

DO I = 1, SIZE( NUMBERS )
IF ( LEN_TRIM( WORDS(I) ) > 0 ) THEN

EOW = LEN_TRIM( WORDS(I) )

IF ( MODULO ( NUMBER, NUMBERS(I) ) == 0 ) THEN
        
WRITE ( *, FMT = '(A)', ADVANCE = 'NO' ) WORDS(I)( 1 : EOW )
PRINT_MADE = 1

ENDIF
                
ENDIF
ENDDO

IF ( PRINT_MADE == 0 ) THEN

WRITE ( *, FMT = '(I3)', ADVANCE = 'NO' ) NUMBER

ENDIF

WRITE ( *, FMT = '(A)' ) ''


ENDSUBROUTINE CHECK_ARRAY

ENDPROGRAM MAIN
