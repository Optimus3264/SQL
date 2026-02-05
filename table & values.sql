create table loan_applications(
loan_id serial primary key,
borrower_id int,
loan_amount numeric(12,2),
loan_type text,
credit_score int,
application_date date,
loan_status text,
processing_stage text
);

INSERT INTO loan_applications 
(borrower_id, loan_amount, loan_type, credit_score, application_date, loan_status, processing_stage)
VALUES 
(101, 325000.00, 'Conventional', 750, '2022-03-15', 'Approved', 'Underwriting'),
(102, 285000.00, 'FHA', 680, '2022-06-22', 'Pending', 'Initial_Review'),
(103, 450000.00, 'VA', 720, '2022-09-10', 'Approved', 'Collateral'),
(104, 195000.00, 'USDA', 690, '2022-11-05', 'Rejected', 'Initial_Review'),
(105, 375000.00, 'Conventional', 780, '2023-01-18', 'Approved', 'Underwriting'),
(106, 420000.00, 'FHA', 650, '2023-03-25', 'Pending', 'In_Process'),
(107, 510000.00, 'VA', 740, '2023-05-14', 'Approved', 'Collateral'),
(108, 265000.00, 'USDA', 670, '2023-07-08', 'Pending', 'Initial_Review'),
(109, 390000.00, 'Conventional', 760, '2023-09-20', 'Approved', 'Underwriting'),
(110, 310000.00, 'FHA', 640, '2023-11-12', 'Rejected', 'Initial_Review'),
(111, 475000.00, 'VA', 730, '2024-01-30', 'Approved', 'Collateral'),
(112, 225000.00, 'USDA', 700, '2024-03-17', 'Pending', 'In_Process'),
(113, 540000.00, 'Conventional', 790, '2024-05-09', 'Approved', 'Underwriting'),
(114, 355000.00, 'FHA', 660, '2024-06-28', 'Pending', 'Initial_Review'),
(115, 485000.00, 'VA', 745, '2024-08-15', 'Approved', 'Collateral'),
(116, 295000.00, 'USDA', 685, '2024-09-22', 'Pending', 'In_Process'),
(117, 425000.00, 'Conventional', 770, '2024-10-30', 'Approved', 'Underwriting'),
(118, 335000.00, 'FHA', 655, '2024-11-18', 'Rejected', 'Initial_Review'),
(119, 505000.00, 'VA', 755, '2024-12-05', 'Approved', 'Collateral'),
(120, 275000.00, 'USDA', 695, '2024-12-20', 'Pending', 'In_Process');
