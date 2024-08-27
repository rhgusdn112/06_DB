SELECT * FROM EMPLOYEE;

-- 입력받은 급여보다 초과해서 받는 사원의
-- 사번, 이름, 급여 조회

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY > 4000000;

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN MIN(SALARY) AND MAX(SALARY)
ORDER BY SALARY DESC;