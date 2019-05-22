program loop
  implicit none
  integer i, wa
  wa = 0
  do i = 1, 10
    wa = wa + i
  enddo
  write(*, *) 'wa = ', wa
end program loop
