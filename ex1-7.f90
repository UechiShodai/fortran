program ex1_7
  implicit none
  integer nPr,nCr,n,r,i,j,k,n_n,r_r,n_r,ans
  n_n = 1
  n_r = 1
  r_r = 1

  do
    write(*, '(a/)') ' input n ( n <= 10 ) '
    read (*, *) n
    if (n > 10) then
      write(*, *) 'sorry, input positive n ...'
      cycle
    else if ( n == 0 ) then
      exit
    else
      write(*, '(a/)') ' input r ( 0 <= r <= n ) '
      read (*, *) r
      if (r < n) then
        do i = 1, n
          n_n = n_n * i
        end do
        do j = 1, r
          r_r = r_r * j
        end do
        do k = 1, n-r
          n_r = n_r * k
        end do
      else
        cycle
      end if
      nPr = n_n / n_r
      nCr = n_n / (n_r * r_r)
      write(*, *) 'nPr , nCr = ' ,nPr ,nCr
    end if
    write(*,*) ''
    write(*, '(a/)') ' Do you continuity ? (Yes = 1, No = 0) '
    read (*,*) ans
    if(ans == 0) then
      exit
    end if
  end do
  write (*, *) 'exit from do-loop ...'
end program ex1_7
