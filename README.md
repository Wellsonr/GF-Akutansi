# GF-Akutansi

Customize your GF Accounting Application with the following instructions to quickly set it up and get started.

## Getting Started

### 1. Download the Repository
To get started, clone the GitHub repository to your local machine using the command:
git clone https://github.com/Wellsonr/GF-Akutansi.git

### 2. Database Initialization
Before using the application, set up the database:

- **Download MySQL Format**:
  - Access the MySQL database file inside the `Requirements` folder.
- **Restore the Database**:
  - Import the MySQL file into your DBMS to restore the database.
- **Set Up Database**:
  - Choose the database that u just restore: 'set database ur_db_name; '
  - Set Allowed Package in the database using query: 'SET GLOBAL max_allowed_packet=16777216; '
 
### 3. Application Setup
Configure the application to ensure it can connect to your database:

- **Configure GF.exe.config**:
  - Navigate to `GF.exe.config` within the cloned repository.
  - Search for `SetUp Database` and enter your database details, including password if required.

### 4. Account Information
Login to the application using the default user credentials:

- **Username:** Wellson
- **Password:** test123

## Sneak Peek
Here are some screenshots of the GF-Akutansi Application:

![data1](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/f8c02008-f6b1-48b7-bc59-c22568a86f91)
![data2](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/e9599188-611f-47c2-974a-3c42a0bf5e99)
![data3](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/99fe8d64-75e8-4767-bd73-eeb065534216)
![data4](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/84130209-4af3-4a2d-a380-0abe2c455a71)
![data6](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/64d836e4-0e23-43e2-a910-e10e3e53d20f)
![data5](https://github.com/Wellsonr/GF-Akutansi/assets/129402813/505b8bb5-37f9-4798-b2b4-3a58e0a2f81e)

## Warning
This project not for any commercial use.
