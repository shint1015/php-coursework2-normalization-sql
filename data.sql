START TRANSACTION;

INSERT INTO department (deptcode, deptlocation) VALUES
  ('1A', 'Lemery'),
  ('1C', 'Changhua'),
  ('3D', 'Sidokumpul'),
  ('4B', 'Lilla Edet'),
  ('2F', 'Pointe-à-Pitre'),
  ('5E', 'Gothenburg'),
  ('7H', 'Kyoto'),
  ('9K', 'Lisbon');

INSERT INTO employee (name, job, hiredate, salary, deptcode) VALUES
  ('Benjamin Miguet', 'Programmer IV', '2019-10-25', 133608.91, '3D'),
  ('Biddy Coppock', 'Health Coach II', '2016-12-09', 135302.24, '1C'),
  ('Desmond Ogbourne', 'Senior Cost Accountant', '2020-03-24', 55991.73, '4B'),
  ('Marita Dubery', 'Executive Secretary', '2019-03-13', 53720.04, '1A'),
  ('Meg Holleran', 'Executive Secretary', '2014-10-20', 73794.50, '1C'),
  ('Akira Tanaka', 'Software Engineer', '2021-04-01', 92000.00, '7H'),
  ('Sara Johansson', 'Data Analyst', '2022-01-15', 78500.00, '5E'),
  ('Luis Ferreira', 'HR Specialist', '2018-06-10', 64250.00, '9K'),
  ('Emily Chen', 'QA Engineer', '2020-08-20', 70500.00, '1C'),
  ('Tomokazu Saito', 'DevOps Engineer', '2017-11-05', 99000.00, '7H'),
  ('Jorge Almeida', 'Network Administrator', '2015-02-14', 68800.00, '9K'),
  ('Mika Kobayashi', 'Business Analyst', '2019-09-09', 81200.00, '7H'),
  ('Noah Berg', 'UX Designer', '2021-07-12', 77000.00, '5E'),
  ('Hana Suzuki', 'Product Manager', '2018-03-30', 110000.00, '7H'),
  ('Paulo Sousa', 'Financial Analyst', '2022-05-25', 84500.00, '9K'),
  ('Yuki Nakamura', 'Technical Writer', '2016-09-01', 62000.00, '7H'),
  ('Adam Nilsson', 'Systems Engineer', '2020-12-02', 95000.00, '5E'),
  ('Rui Martins', 'Marketing Coordinator', '2017-04-18', 58500.00, '9K'),
  ('Shiori Matsumoto', 'Security Analyst', '2023-02-01', 102500.00, '7H'),
  ('Eva Lind', 'Recruiter', '2019-05-21', 61000.00, '5E'),
  ('Carlos Pinto', 'Operations Manager', '2014-01-07', 118000.00, '9K'),
  ('Haruka Watanabe', 'Scrum Master', '2021-10-19', 97000.00, '7H'),
  ('Bjorn Eriksson', 'DB Administrator', '2015-07-27', 88000.00, '5E'),
  ('Andre Silva', 'Project Coordinator', '2018-12-03', 72000.00, '9K'),
  ('Kana Ishikawa', 'Support Engineer', '2016-06-16', 65000.00, '7H'),
  ('Lina Karlsson', 'Frontend Developer', '2020-01-29', 93000.00, '5E'),
  ('Tiago Rocha', 'Backend Developer', '2017-08-11', 98000.00, '9K'),
  ('Sota Fujii', 'ML Engineer', '2022-09-05', 115000.00, '7H'),
  ('Elin Andersson', 'Content Strategist', '2019-02-22', 60000.00, '5E'),
  ('Marta Ribeiro', 'Office Administrator', '2015-10-13', 54000.00, '9K');

COMMIT;