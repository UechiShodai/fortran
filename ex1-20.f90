program ex1_20
  implicit none
  real(8) pi, pi_ans, pi_r, x, y
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
  pi_ans = 0

  open(fo, file = 'output.d')

  do
    x = r * cos(pi_ans)
    y = r * sin(pi_ans)
    write(fo, *) '' ,x ,y
    pi_ans = pi_ans + pi_r
    if (pi_ans >= 2*pi) exit
  end do
  close(fo)
end program ex1_20
