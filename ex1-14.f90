program ex1_14
  implicit none
  real(8) ex, er, result, n_re
  integer n

  ex = exp(1.0d0)
  result = 1
  n_re = 1

  write(*, *) ' exp(1) = ' ,ex

  do n = 1, 10
    n_re = n_re*n
    result = result + 1/n_re
    er = abs(ex-result)
    write(*, *) ' n, result, er = ' ,n ,result ,er
  end do
end program ex1_14
