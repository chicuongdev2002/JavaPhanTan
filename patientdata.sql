USE [patient]
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D01', N'Floor 2', N'Otorhinolaryngology')
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D02', N'Floor 2', N'Stomatology')
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D03', N'Floor 3', N'Neurology')
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D04', N'Floor 3', N'Dermatology')
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D05', N'Floor 4', N'Internal')
GO
INSERT [dbo].[Department] ([id], [location], [name]) VALUES (N'D06', N'Floor 5', N'External')
GO
INSERT [dbo].[Doctor] ([id], [name], [phone], [speciality]) VALUES (N'IMIKKILI', N'Irene Mikkilineni', N'650.124.6234', N'Surgeon')
GO
INSERT [dbo].[Doctor] ([id], [name], [phone], [speciality]) VALUES (N'JPATEL', N'Joshua Patel', N'650.124.6234', N'Cardiologist')
GO
INSERT [dbo].[Doctor] ([id], [name], [phone], [speciality]) VALUES (N'MATKINSO', N'Mozhe Atkinson', N'650.124.6234', N'Obstetrician')
GO
INSERT [dbo].[Doctor] ([id], [name], [phone], [speciality]) VALUES (N'SBAIDA', N'Shelli Baida', N'650.124.6234', N'Dermatologist')
GO
INSERT [dbo].[Doctor] ([id], [name], [phone], [speciality]) VALUES (N'SMARKLE', N'Steven Markle', N'650.124.6234', N'Psychiatrist')
GO
INSERT [dbo].[Patient] ([id], [name], [phone], [address], [dateOfBirth], [gender]) VALUES (N'015-44-0003', N'Jennifer Whalen', N'515.123.4444', N'4028 Davis Street', CAST(N'1967-02-25' AS Date), N'Female')
GO
INSERT [dbo].[Patient] ([id], [name], [phone], [address], [dateOfBirth], [gender]) VALUES (N'025-33-0004', N'Julia Nayer', N'650.124.1214', N'40 Ethels Lane', CAST(N'2012-06-02' AS Date), N'Female')
GO
INSERT [dbo].[Patient] ([id], [name], [phone], [address], [dateOfBirth], [gender]) VALUES (N'030-11-0001', N'Donald OConnell', N'650.507.9833', N'2392 Dennison Street', CAST(N'2019-01-10' AS Date), N'Male')
GO
INSERT [dbo].[Patient] ([id], [name], [phone], [address], [dateOfBirth], [gender]) VALUES (N'040-22-0002', N'Hermann Baer', N'515.123.8888', N'1495 Sand Fork Road', CAST(N'2000-10-15' AS Date), N'Male')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-05' AS Date), N'Skin rash', CAST(N'2022-09-05' AS Date), N'025-33-0004', N'D02', N'SBAIDA')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-08-17' AS Date), N'Toothache', CAST(N'2022-08-21' AS Date), N'040-22-0002', N'D02', N'MATKINSO')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-25' AS Date), N'Toothache', CAST(N'2022-09-25' AS Date), N'040-22-0002', N'D02', N'JPATEL')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-07-26' AS Date), N'Headache', CAST(N'2022-07-27' AS Date), N'015-44-0003', N'D03', N'SBAIDA')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-12' AS Date), N'Headache', CAST(N'2022-09-12' AS Date), N'015-44-0003', N'D03', N'JPATEL')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-15' AS Date), N'Headache', CAST(N'2022-09-15' AS Date), N'015-44-0003', N'D03', N'JPATEL')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2021-03-21' AS Date), N'Headache', CAST(N'2021-04-01' AS Date), N'030-11-0001', N'D03', N'IMIKKILI')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2021-05-02' AS Date), N'Headache', CAST(N'2021-05-05' AS Date), N'030-11-0001', N'D03', N'MATKINSO')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-02' AS Date), N'Headache', CAST(N'2022-09-03' AS Date), N'030-11-0001', N'D03', N'SMARKLE')
GO
INSERT [dbo].[Treatment] ([startDate], [diagnosis], [endDate], [patient_id], [department_id], [doctor_id]) VALUES (CAST(N'2022-09-13' AS Date), N'Skin rash', CAST(N'2022-09-15' AS Date), N'025-33-0004', N'D04', N'SMARKLE')
GO