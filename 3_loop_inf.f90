program  inf
  implicit none
  integer wa, n, i

  do
    write(*, *) ' input n (if n <= 0 , stop) : '
    read (*, *) n
    if (n <= 0) stop 'good bye ...'
    wa = 0
    do i = 1, n
      wa = wa + i
    enddo
    write (*, *) 'wa = ' ,wa
  end do

end program inf
