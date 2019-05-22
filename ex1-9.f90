program ex1_9
  implicit none
  integer x, y, z, i, result1, result2
  z = 0

  do
   write(*, '(a/)') ' input x ( x > 0 )'
   read (*, *) x
   if (x <= 0) then
     stop ' sorry, this number is not analys ... '
   end if

   write(*, '(a/)') ' input y ( y > 0 )'
   read (*, *) y
   if (y <= 0) then
     stop ' sorry, this number is not analys ... '
   end if
   if(x > y)then
     z = x
     x = y
     y = z
   end if
   do i = x, 1, -1
     result1 = mod(y,i)
     result2 = mod(x,i)
     if( result1 == 0 ) then
       if( result2 == 0 ) then
         exit
       end if
     end if
   end do
   write (*, *) ' G.C.D = ' ,i
  end do
end program ex1_9
