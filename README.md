# Big Heading
## Medium Heading
**bold text**
`inline code`
````code block```
- bullet point
````

**What your README should contain:**

Here's a template you can copy directly and fill in over time:

````markdown
# Student Management System

A C++ and MySQL-based student management system built as a personal 
project to manage student records, teacher access, and academic marks.

## Features
- Add and manage student records
- Teacher-controlled mark entry and updates
- Role-based login (Admin / Teacher)
- Multi-school support

## Technologies Used
- C++ (Vanilla)
- MySQL
- mysql-connector-c++

## Getting Started

### Prerequisites
- g++ compiler
- MySQL Server
- mysql-connector-c++ library

### Installation
1. Clone the repository
```bash
   git clone https://github.com/your-username/student-management-system.git
```
2. Set up the database by running the SQL schema:
```bash
   mysql -u root -p < schema.sql
```
3. Compile the project:
```bash
   g++ main.cpp -o sms -lmysqlcppconn
```
4. Run the program:
```bash
   ./sms
```

## Project Status
🚧 In active development — see the roadmap below.

## Roadmap
- [x] Project design and ERD
- [ ] Database schema
- [ ] Student CRUD operations
- [ ] Mark management
- [ ] Login system

## Author
Katlego Lelaka — BSc Computer Science, University of the Witwatersrand
````

You don't need to fill everything in on day one. Start with just the title, a one-sentence description, and the Technologies section. Update it as you build.

---

## Where to Learn Markdown Properly

It takes about 20 minutes to learn everything you'll ever need. The best resource is [markdownguide.org/basic-syntax](https://www.markdownguide.org/basic-syntax/) — it's simple, visual, and free. GitHub also has a live preview when you edit your README directly on the site, so you can see exactly how it renders as you type.

The most important thing: **create the repo today or tomorrow after your IS test.** Even an empty repo with just a title in the README is a legitimate first commit and the hardest part is always starting.