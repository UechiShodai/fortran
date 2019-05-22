program ex1_10
  implicit none
  integer x, res, pri, i, j

  do
    write(*, '(a/)') ' input x ( 0 < x <= 10000 )'
    read (*, *) x
    if (x <= 0) then
      stop ' sorry, this number is not analys ... '
    else if (x > 10000) then
      write(*, *) ' sorry, this number is not analys ... '
      cycle
    end if
    do i = 1, x
      do j = 2, x-1
        pri = mod(x,j)
        if(pri == 0) then
          exit
        else
          
        end if
      end do
    end do
  end do
end program ex1_10
