
program main
implicit none

integer :: i
integer :: print_made
integer :: ITERATIONS = 100

do i = 1, ITERATIONS

print_made = 0
call check_array(i)

end do

contains

subroutine check_array (number)

        integer :: i
        integer :: number
        integer :: numbers(10)
        character ( len = 20 ) :: words(10) = ""

        character :: first_letter
        integer :: eow

        numbers(1) = 3
        numbers(2) = 5

        words(1) = "fizz"
        words(2) = "buzz"

        do i = 1, size(numbers)
        if (len_trim(words(i)) > 0) then

        eow = len_trim(words(i))

        if ( modulo( number, numbers(i) ) == 0 ) then
        
        if ( print_made == 1 ) then
        write ( *, fmt = '(A)', advance = 'no' ) words(i)(1:eow)
        print_made = 1
        else
        first_letter = achar(iachar(words(i)(1:1)) - 32)
        write ( *, fmt = '(A)', advance = 'no' ) first_letter
        write ( *, fmt = '(A)', advance = 'no' ) words(i)(2:eow)
        print_made = 1
        end if

        end if
                
        end if
        end do

        if ( print_made == 0 ) then

        write ( *, fmt = '(I3)', advance = 'no' ) number

        end if

        write ( *, fmt = '(A)' ) ''


end subroutine check_array

end program main
