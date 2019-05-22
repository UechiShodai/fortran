program ex1_19

  implicit none
  integer :: i, n, fo=11
  real(8) :: res_sinh, res_cosh, res_tanh, x = -1.00d0,a,b

  open(fo, file = 'output.d')

  write(*, '(a/)') ' input n (stop : n >1) '
  read(*, *) n
  if(n<=1) stop 'stop, n <= 1'

  do i = 1, n
    res_sinh = (exp(x)-exp(-x))/2
    res_cosh = (exp(x)+exp(-x))/2
    res_tanh = res_sinh/res_cosh
    x = x + 2/(dble(n-1))
    write(fo,*) res_sinh ,res_cosh ,res_tanh
  end do

  close(fo)

end program ex1_19
