program goto
  implicit none
  integer wa,n,i

  do
    write (*, '(a/)') 'input n (input 0 to stop) : '
    read (*, *) n
    if(n == 0) then
      goto1
    else if (n < 0) then
      write (*, *) 'sorry, input positive n ...'
    else
      wa = 0
      do i = 1, n
        wa = wa + i
      enddo
      write (*, *) 'wa = ' ,wa
    endif
  end do
  1 write (*, *) 'exit from do-loop ... '
end program goto
