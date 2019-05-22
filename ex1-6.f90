program ex1_6
  implicit none
  integer sum, n, m, i, box

  do
    write(*, '(a/)') 'input m (input 0 to stop) : '
    read (*, *) m
    if (m == 0) then
      exit
    else if (m < 0) then
      write(*, *) 'sorry, input positive m ...'
      cycle
    else
      write(*, '(a/)') 'input n (input 0 to stop) : '
      read (*, *) n
      if (n == 0) then
        exit
      else if (n < 0) then
        write(*, *) 'sorry, input positive n ...'
        cycle
      endif
    endif
    if (m > n) then
      box = m
      m = n
      n = box
    endif
    sum = 0
    do i = m, n
      sum = sum + i
    enddo
    write (*, *) 'sum = ' ,sum
  enddo
  write (*, *) 'exit from do-loop ...'
end program ex1_6
