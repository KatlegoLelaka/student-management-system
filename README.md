# CAPS Student Management System

> **Status: On Hold** — Development paused. Project planning and database design complete.

## Overview

The CAPS Student Management System is a student project built to address a real-world problem — providing underdeveloped schools with a simple, lightweight, and offline-capable system to manage student records. The system is designed with low dependencies in mind, making it suitable for environments with limited infrastructure and unreliable internet access.

The system is currently planned as a CLI (Command Line Interface) tool, with the long-term goal of evolving into a full desktop application.

## Purpose

To create a system for underdeveloped schools to easily store student records and allow students and teachers to securely access academic information, materials, and notifications — without requiring an internet connection.

## Users

The system supports four user roles:

- **Student** — View grades, materials and notifications
- **Teacher** — Manage student grades, attendance, materials and class notifications
- **Admin** — Manage student and teacher accounts
- **SuperAdmin** — Full system access and admin oversight

## Planned Features

### System 1 (Core)
- Role-based login for all user types
- Student record management
- Grade setting and controlled grade release
- Attendance tracking per class
- Admin account management with permission-based access control

### System 2 (Extended)
- Homework and material uploads by teachers
- In-app notifications to students (no internet required)
- Student access to learning materials

## Technology Stack

- **Language:** C++
- **Database:** SQLite3
- **Interface:** CLI (Command Line Interface)
- **Version Control:** Git & GitHub

## Database Design

A full relational database schema has been designed and documented, covering the following tables:

`users` `students` `teachers` `classes` `subjects` `marks` `attendance` `materials` `notifications` `notifications_checked` `student_classes`

The schema includes check constraints for data integrity, role-based access control, and junction tables for many-to-many relationships.

## Project Structure

```
student-management-system/
├── StudentManagementSystem/
│   ├── SQLite/
│   │   └── Student_Management_System.sql
│   └── main.cpp
├── .gitignore
├── LICENSE
└── README.md
```

## Current Progress

- [x] System purpose defined
- [x] User roles and use cases documented
- [x] Full database schema designed
- [x] SQL schema exported and committed
- [ ] Database initialisation in C++
- [ ] User authentication
- [ ] Student portal
- [ ] Teacher portal
- [ ] Admin portal

## Author

Developed by **Katlego Lelaka** as part of a personal learning project to build real-world software development skills in C++ and SQLite.
