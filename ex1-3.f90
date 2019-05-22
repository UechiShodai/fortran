program ex1_3
  implicit none
  integer n ,f0, f1, f2
  f0 = 1
  f1 = 2

  write (*,*) 'a,1 ' ,f0

  do n = 2, 10
    write (* ,*) 'a, ' ,n ,f0
    f2 = f0 + f1
    f0 = f1
    f1 = f2
  enddo

end program ex1_3
