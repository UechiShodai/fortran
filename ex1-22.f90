program ex1_22
  implicit none
  integer a, b, c, d_res
  real(8) result1, result2 ,re ,im,sq

  write(*, '(a/)') 'input a (stop, a=0) : '
  read (*, *) a
  if(a==0) stop 'stop, a=0 '
  write(*, '(a/)') 'input b : '
  read (*, *) b
  write(*, '(a/)') 'input c : '
  read (*, *) c

  d_res = b ** 2 - 4*a*c
  sq = sqrt(abs(dble(d_res)))

  if( d_res < 0 ) then
    re = (-b)/(2*a)
    im = sq/dble(2*a)
    write(*, *) 'D, real, imag = ' ,d_res ,re ,im
  else
    result1 = (-b+sq)/dble(2*a)
    result2 = (-b-sq)/dble(2*a)
    if(result1 == result2) then
      write(*, *) 'D, result(same ans) = ' ,d_res ,result1
    else
      write(*, *) 'D, result1, result2 = ' ,d_res ,result1 ,result2
    end if
  end if

end program ex1_22
