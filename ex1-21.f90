program ex1_20
  implicit none
  real(8) pi, pi_r, x, y, cyc, cyc_a, e
  integer r, n, i
  integer :: fo=11

  pi = 2.0d0 * acos(0.0d0)
  write(*, '(a/)') ' input r (stop, r<=0) : '
  read(*, *) r
  if(r <= 0) stop 'stop, r <= 0'

  write(*, '(a/)') 'input n (stop, n<3) : '
  read (*, *) n
  if(n < 3) stop 'stop, n < 3'
  pi_r = 2 * pi / dble(n)
  cyc = pi * r ** 2
  cyc_a = 0

  open(fo, file = 'output.d')

  do i = 1, n
    cyc_a = cyc_a + (r ** 2) * sin(pi_r) / 2
    e = abs(cyc - cyc_a)
    write(fo, *) '' ,i ,e
  end do
  close(fo)
end program ex1_20
