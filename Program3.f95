!Purpose: Calculates the average of a list of number.
!Name: Joe Cassidy
!Class: CSCI 431
!Date: 20 February, 2019

!Calculates numbers(1) divided by numbers(2) and places it in numbers(3)
subroutine Average(numbers)
implicit none
  real, dimension(3) :: numbers;
  numbers(3) = numbers(1)/numbers(2);
  return;
end subroutine;

program Program3
implicit none
  real :: nextValue;
  integer :: ierror;
  logical :: endOfList;
  real, dimension(3) :: numbers;

  print*,"Enter a list of numbers to find their average:"
  !holds the count
  numbers(2) = 0;
  !holds the sum
  numbers(1) = 0;
  endOfList = .FALSE.;
  !input loop, stop when list isn't empty and a non-number is given
  do
    !request input
    print*,"Enter the next number or a non-number to end the list: "
    do
      !checks if input is a number
      read(*,*,iostat=ierror) nextValue
      if(ierror == 0) then
        numbers(2) = numbers(2) + 1;
        numbers(1) = numbers(1) + nextValue;
        exit;
      else
        if(numbers(2) > 0) then
          endOfList = .TRUE.
          exit;
        end if
        print*, "List must have at least one element."
      end if
    end do
    if(endOfList .AND. numbers(2) > 0) exit;
  end do

  !calls the function to calculate the average
  call Average(numbers)

  print*, "The average of your list of numbers is: ", numbers(3);

end program Program3
