program ex1_13
  implicit none
  integer a, b
  real(8) pi, result, ex

  pi = 2.0d0 * acos(0.0d0)

  do
    write(*, '(a/)') 'input a (stop:a<0) '
    read(*, *) a
    write(*, '(a/)') 'input b (stop:a<b) '
    read(*, *) b
    if (a < 0) stop 'stop, a < 0'
    if (b < a) stop 'stop, b < a'

    ex = exp(-((dble(b-a)) ** 2)/2)
    result = (1/sqrt(2*pi))*ex
    write (*, *) ' result = ' ,result
  enddo
end program ex1_13
