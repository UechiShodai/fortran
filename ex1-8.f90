program ex1_8
  implicit none
  integer x, i, ans

  do
    write(*, '(a/)') ' input number x ( x <= 1000000 ) '
    read(*, *) x
    if( x > 1000000 ) then
      write (*, *) ' sorry, this numer is over ... '
      cycle
    else if (x <= 0) then
      stop ' sorry, this number is not analys ... '
    end if
    do i = 2, x-1
      ans = mod(x, i)
      if(ans == 0) then
        write(*, *) ' ypur input number is not prime number ... '
        exit
      end if
    end do
    if (ans /= 0) then
      write (*, *) 'prime number = ' ,x
    end if
  end do
end program ex1_8
