program ex1_12
  implicit none
  real(8)  a,a_n, r, s_re, s_th, num
  integer n

  a = 16.0d0
  r = 0.8d0
  a_n = 0.00d0
  s_re = 0.00d0
  num = 1.0

  do n = 1, 10
    a_n = a*(r) ** (n-1)
    s_re = s_re + a_n
    s_th = a*(num - (r) ** n)/(num - r)
    write(*, *) ' a_n, n = ' ,a_n ,n
  end do

  write(*, *) ' s_re =  ' , s_re
  write(*, *) ' s_th =  ' , s_th

end program ex1_12
