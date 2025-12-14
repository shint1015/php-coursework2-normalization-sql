## Table: EmployeeFlat

### Columns:

-   Empno: employee ID (integer)
-   Name: full name (varchar)
-   Job: job title (varchar)
-   Hiredate: date of hire (date)
-   Salary: base salary (decimal)
-   Deptcode: department code (varchar)
-   Deptlocation: department location (varchar)

### Key Assumption:

-   Primary key: Empno (unique per employee)

### Redundancy/Anomalies:

-   Deptlocation repeats across many rows for the same Deptcode.
-   Update anomaly: changing a department’s location requires updating multiple rows.
-   Insertion anomaly: cannot store a new department without at least one employee.
-   Deletion anomaly: deleting the last employee of a department loses its location.

### Sample Rows:

-   (1001, Benjamin Miguet, Programmer IV, 2019-10-25, 133608.91, 3D, Sidokumpul)
-   (1002, Biddy Coppock, Health Coach II, 2016-12-09, 135302.24, 1C, Changhua)
-   (1005, Meg Holleran, Executive Secretary, 2014-10-20, 73794.50, 1C, Changhua)

## Normalization Process (Employee Dataset → 3NF)

Steps in the normalization process are as follows:

1. Identify all the candidate keys of the relation.

-   Candidate key: Empno

2. Identify all the functional dependencies in the relation.

-   Empno -> (Name, Job, Hiredate, Salary, Deptcode, Deptlocation)
-   Deptcode -> Deptlocation

1. Examine the determinants of the functional dependencies.

If any determinant is not a candidate key, the relation is not well formed. In this case:

a. Place the columns of the functional dependency in a new relation of their own.

-   DEPARTMENT (Deptcode, Deptlocation)

b. Make the determinant of the functional dependency the primary key of the new relation.

-   DEPARTMENT (Deptcode(PK), Deptlocation)

c. Leave a copy of the determinant as a foreign key in the original relation.

-   EMPLOYEE (Empno, Name, Job, Hiredate, Salary, Deptcode(FK))

d. Create a referential integrity constraint between the original and the new relation.

-   Employee.Deptcode -> Department.Deptcode

1. Repeat Step 3 until every determinant of every relation is a candidate key.

-   EMPLOYEE (Empno(PK), Name, Job, Hiredate, Salary, Deptcode(FK))
-   DEPARTMENT (Deptcode(PK), Deptlocation)
