program newton_sqrt
  implicit none
  real(8) :: x1, x2, a, er, er0 = 1.0d-6
  integer :: k, km = 100

  write(*, '(a/)') 'input a : '
  read(*, *) a

  if(a <= 0.0d0) stop 'a <= 0.0d0 '
  x1 = a
  do k = 1, km
    x2 = x1 - 0.5d0 * (x1 ** 2 - a)/x1
    er = abs(x2 - x1)
    if(er < er0) exit
    x1 = x2
  end do

  write(*, *) ' ans, k, er = ' ,x2 ,k ,er

end program newton_sqrt
