CREATE FUNCTION ORA.add_months(d1 DATETIME YEAR TO FRACTION(5), n FLOAT)
RETURNING DATE;
    DEFINE d2 DATE;
    DEFINE rv DATE;
    DEFINE d3 DATE;

    let d3 = mdy(month(d1), DAY(d1), YEAR(d1));
    LET d2 = DATE(EXTEND(MDY(MONTH(d3), 1, YEAR(d3)), YEAR TO DAY) + n UNITS MONTH);
    LET rv = d2 + DAY(d3) - 1;
    IF MONTH(rv) != MONTH(d2) THEN
        LET rv = rv - DAY(rv);
    END IF;
    RETURN rv;
END FUNCTION;


select extend(current, fraction to fraction) from sysmaster:informix.sysdual;
select substr(extend(current, fraction to fraction),2,3) from sysmaster:informix.sysdual;
select ((current - (current - 1 units day))::interval second(9) to second::varchar(30)::int)*1000 from sysmaster:informix.sysdual;



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
     select ((d2 - d1)::interval second(9) to second::varchar(30)::int)*1000+frac2-frac1+1 into rv from sysmaster:informix.sysdual;
  end if;
  return rv;
end function;
