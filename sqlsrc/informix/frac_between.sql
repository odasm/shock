DROP FUNCTION 'tsaip'.frac_between(datetime,datetime);

create function frac_between(d1  DATETIME YEAR TO FRACTION(5),d2  DATETIME YEAR TO FRACTION(5))
returning int8;
define rv int8;
define frac1 int;
define frac2 int;
  if d1 > d2 then
     let rv=-1;
  else
     select substr(extend(d2, fraction to fraction),2,5)::int into frac2 from sysmaster:informix.sysdual;
     select substr(extend(d1, fraction to fraction),2,5)::int into frac1 from sysmaster:informix.sysdual;
     if frac2>frac1 then
       select ((d2 - d1)::interval second(9) to second::varchar(30)::int)*1000+frac2-frac1 into rv from sysmaster:informix.sysdual;
     else 
	select ((d2-d1)::interval second(9) to second::varchar(30)::int)*1000+1000+frac2-frac1 into rv from sysmaster:informix.sysdual;
     end if; 
 end if;
  return rv;
end function;