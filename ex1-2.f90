program exam1_2
 implicit none
 integer k, n, result1, result2, result3, result4, result5, result6
 result1 = 0
 result3 = 0
 result5 = 0
 n = 80

 do k = 1, n
   result1 = result1 + k
   result3 = result3 + (k) ** 2
   result5 = result5 + (k) ** 3
 enddo

 result2 = n*(n+1)/2
 result4 = n*(n+1)*(2*n+1)/6
 result6 = (n ** 2)*((n+1) ** 2)/4

  write(*, *) 'result1 , result2' ,result1 ,result2
  write(*, *) 'result3 , result4' ,result3 ,result4
  write(*, *) 'result5 , result6' ,result5 ,result6

end program exam1_2
