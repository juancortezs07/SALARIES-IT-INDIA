#Muestra la cantidad de filas 
select count(*) as "Count"
from salary

#Muestra todas las columnas 
select *
from salary

#Muestra el salario promedio total
select avg("Salary") as "Average_Salary"
from salary

#Muestra los salarios promedio por ubicación
select avg("Salary")as "Average_salary", "Ubication"
from salary
group by "Ubication"

#Muestra los salarios promedio por tipo de trabajo
select avg("Salary") as "Average_salary" , "Job"
from salary
group by ("Job")

#Muestra los salarios promedio por tamaño de empresa
select avg("Salary") as "Average_Salary" , "Size_Company"
from salary
group by ("Size_Company")
order by "Average_Salary" desc


#Muestra  los tamaños de empresas
select count(distinct("Size_Company")), "Size_Company"
from salary
group by "Size_Company"


#Muestra cantidades según tamaño de compañía
select count("Size_Company"), "Size_Company"
from salary
group by "Size_Company"


#Muestra cantidad de tipo de trabajo según tamaño de empresa
select "Size_Company", count("Job") as "Count", "Job"
from salary
group by ("Size_Company", "Job")
order by "Count" desc


#Muestra cantidad de tipo de trabajo según Ubicación
select "Ubication", count("Job") as "Count", "Job"
from salary
group by ("Ubication", "Job")
order by "Count" desc


#Muestra cantidad de trabajadores por empresa
select "Company_Name", sum("Salaries_Reported") as "Total Employees"
from salary
group by "Company_Name"
order by "Total Employees" desc



#Muestra cantidad de tipo de trabajo según Ubicación con salario promedio 
select "Ubication", count("Job") as "Count", "Job", round(avg("Salary"),2) as "Average_salary"
from salary
group by ("Ubication", "Job")
order by "Count" desc
























#Muestra la cantidad de tipos de trabajo según tamaño de empresa
select count("Job") as "Count_Job" , "Size_Company", "Job"
from salary
group by ("Size_Company","Job")
order by "Count_Job" desc
