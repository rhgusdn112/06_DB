SELECT
      EMP_ID 사번,
      EMP_NAME 이름,
      DECODE(SUBSTR(EMP_NO,8,1),1,'M',2,'F') AS "성별",
      SALARY 급여,
      JOB_NAME 직급명,
      DEPT_TITLE 부서명
FROM EMPLOYEE
JOIN JOB USING (JOB_CODE)
LEFT JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
WHERE DECODE(SUBSTR(EMP_NO,8,1),'1','M','2','F')
AND SALARY BETWEEN 3000000 AND 4000000
ORDER BY SALARY DESC;