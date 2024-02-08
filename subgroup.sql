select 1, 1+1, sysdate from s_emp;

select name || ' ' || mailid from s_emp;

select * from s_emp
where start_date >= to_date('15-03-03', yy-mm-dd);

-- 다음달의 마지막 날이 몇 일인지 구하시오
select to_char(last_day(add_months(sysdate,1)),'mm-dd') 다음_달의_마지막_날 from dual;

-- 각 부서별 평균급여를 출력
select dept_id, round(avg(salary),2)
from s_emp
where title = '사원'
group by dept_id;

-- 각 부서별로 평균 급여를 구하되 평균 급여가 2000이상인 부서만 나타내시오.
-- 118, 101, 102, 104
select dept_id 부서, round(avg(salary),2) 평균급여
from s_emp
group by dept_id
having round(avg(salary),2) >= 2000
order by 부서
;

-- 각 지역별로 몇 개의 부서가 있는지를 나타내시오.
-- 4, 2, 2, 2, 1
select region_id 지역번호, count(name) 부서개수 from s_dept
group by region_id
order by region_id
;