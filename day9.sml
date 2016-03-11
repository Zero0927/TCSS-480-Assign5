fun roots(a:real, b:real, c:real)=
	if b*b - 4.0*a*c< 0.0 then (0.0,0.0)
	else((~b+Math.sqrt(b*b - 4.0*a*c))/(2.0*a),(~b-Math.sqrt(b*b - 4.0*a*c))/(2.0*a));

fun isYounger((a:int, b:int, c:int),(d:int, e:int, f:int))=
	if c > f then true
	else if c < f then false
	else if b > e then true
	     else if b < e then false
	     else if a > d then true
	          else false;
	          
fun length(x:int list)=
	if null x then 0 else length (tl x) + 1;
	
fun getnth(x:string list, a:int)=
	if null x then "no such element"
	else if a = 1 then (hd x)
	else getnth((tl x), a - 1);
	
fun generate(arg1:int, arg2:int) =
  if arg1>arg2 then []
  else arg1::generate(arg1 +1, arg2);
  
fun numberInMonth(dates:(int*int*int) list, m : int) = 
  if null dates then 0
  else if #2 (hd dates) = m then 1 + numberInMonth(tl dates, m)
  else numberInMonth(tl dates, m)
  
fun datesInMonth(dates:(int*int*int) list, m:int)=
  if null dates then []
  else if #2 (hd dates) = m then (hd dates)::datesInMonth(tl dates,m)
  else datesInMonth(tl dates, m)

fun repeat(ls1: int list, ls2: int list) = 
  if null ls1 then []
  else if null ls2 then ls1
  else if (hd ls2) = 0 then (hd ls1)::repeat(tl ls1, tl ls2)
  else (hd ls1)::repeat(ls1, ((hd ls2)-1)::(tl ls2))
