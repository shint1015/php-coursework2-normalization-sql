-- Department master
CREATE TABLE department (
  deptcode VARCHAR(10) NOT NULL,
  deptlocation VARCHAR(100) NOT NULL,
  PRIMARY KEY (deptcode)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Employee table (current snapshot of facts)
CREATE TABLE employee (
  empno INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(150) NOT NULL,
  job VARCHAR(100) NOT NULL,
  hiredate DATE NOT NULL,
  salary DECIMAL(12,2) NOT NULL,
  deptcode VARCHAR(10) NOT NULL,
  -- Ensure no duplicate employee IDs
  PRIMARY KEY (empno),
  -- Each employee belongs to one department
  CONSTRAINT department_constraint
    FOREIGN KEY (deptcode)
    REFERENCES department (deptcode)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;