program ex1_16
  implicit none
  real(8) :: x1, x2, a, f, fd, er, er0 = 1.0d-6
  integer :: k, km = 100

  write(*, '(a/)') 'input a : '
  read(*, *) a

  if(a <= 0.0d0) stop 'a <= 0.0d0 '
  x1 = a
  do k = 2, km
    f = x1 ** k
    fd = (x1 ** (k-1))*k
    x2 = x1 - (f-a)/fd
    er = abs(x2 - x1)
    if(er < er0) exit
    x1 = x2
  end do

  write(*, *) ' ans, k, er = ' ,x2 ,k ,er

end program ex1_16
