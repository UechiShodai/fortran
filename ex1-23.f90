program ex1_23
  implicit none
  integer n, i
  real(8) :: pi, e, ans_k, hl_1=1, hl_2=1, hl=1, k

  pi = 2.0d0 * acos(0.0d0)

  write(*, '(a/)') 'input n (stop, n<2) : '
  read (*, *) n
  if(n < 2) stop 'stop, n<2'

  write(*, '(a/)') 'input k (-1<k<1) : '
  read (*, *) k
  if(k <= -1) then
    stop 'stop, k <= -1'
  else if(k >= 1) then
    stop 'stop, k >= 1'
  end if

  do i = 1, n
    hl_1 = hl_1 * dble((2*i-1) ** 2)
    hl_2 = hl_2 * dble((2*i) ** 2)
    hl = hl + hl_1*(k ** (2*i))/hl_2
    ans_k = 0.5d0*pi*hl
  end do
  write(*, *) 'K(k) = ' ,ans_k

end program ex1_23
