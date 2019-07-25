CREATE TABLE automation_probability (
    SOC VARCHAR(10) primary key,
    Occupation VARCHAR(250),
    Probability FLOAT
)

CREATE TABLE occupational_employment_statistics (
    SOC VARCHAR(10) primary key,
    Occupational_Title VARCHAR(250),
    Mean_Wage MONEY,
    Median_Wage MONEY,
    Entry_Wage MONEY,
    Experienced_Wage MONEY
)

SELECT automation_probability.SOC, automation_probability.Probability, automation_probability.Occupation, occupational_employment_statistics.Mean_Wage, occupational_employment_statistics.Median_Wage, occupational_employment_statistics.Entry_Wage, occupational_employment_statistics.Experienced_Wage
FROM automation_probability
LEFT JOIN occupational_employment_statistics
ON occupational_employment_statistics.SOC = automation_probability.SOC;
