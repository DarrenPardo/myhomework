-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5R98NT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Deparments" (
    "Dept_no" VARCHAR(30)   NOT NULL,
    "Dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Deparments" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Employees" (
    "Emp_no" INT   NOT NULL,
    "Birth_date" DATE   NOT NULL,
    "First_name" VARCHAR(50)   NOT NULL,
    "Llast_name" VARCHAR(50)   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Department_Manager" (
    "Dept_no" VARCHAR(30)   NOT NULL,
    "Emp_no" INT   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Department_Employee" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" VARCHAR(30)   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Titles" (
    "Emp_no" INT   NOT NULL,
    "Title" VARCHAR(50)   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Deparments" ("Dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Deparments" ("Dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

