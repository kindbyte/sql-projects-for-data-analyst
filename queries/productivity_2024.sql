SELECT departments.department_name, 
   COUNT(employees.employee_id) AS employee_count, 
   SUM(sales.sale_amount) AS total_sales,
   SUM(sales.sale_amount)/COUNT(employees.employee_id) AS avg_per_employee 
         FROM employees 
               INNER JOIN departments ON employees.department_id = departments.department_id
               INNER JOIN sales ON employees.employee_id = sales.employee_id 
                      WHERE sale_date BETWEEN '2024-01-01' AND '2024-12-31' 
                             GROUP BY departments.department_name 
                                    HAVING SUM(sales.sale_amount) > 2000 
                                            ORDER BY total_sales DESC;

