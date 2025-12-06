📚 Learning Management System (LMS)

A Spring Boot + Thymeleaf + MySQL web application that supports online courses, instructors, students, enrollments, and content management.
Admins can manage users and courses, instructors can upload learning materials, and students can enroll and learn through structured course content.

** Tech Stack**

Backend
--------

Spring Boot 3

Spring MVC

Spring Security

Hibernate / JPA

MySQL (H2 for Tests)

Frontend
--------

Thymeleaf

Bootstrap 5

Tools
-----

Maven

Docker

Render Deployment

JUnit 5 & Mockito for Testing

**User Roles & Capabilities**

** Admin

Manage Students (create, view, delete)

Manage Instructors (create, view, delete)

Manage Courses (create, edit, delete, assign instructor)

View dashboard metrics:

Total instructors

Total students

Total courses

Total enrollments

**Instructor**

View assigned courses

Upload course content

PDF

Images

Videos

Delete uploaded content

View students enrolled in their courses

Instructor dashboard

**Student**

View all available courses

Enroll into free or paid courses

Make payment for paid courses (mock payment page)

View course content

Track enrolled courses in My Courses

Student dashboard

**Entity Relationship Overview**

Admin (User)
   |
   | creates
   v
Course -------------------< Enrollment >------------------- User (Student)
   |
   | has
   v
CourseContent (PDF / Image / Video)
   ^
   |
Instructor (User)

**Key Entities**

User (Student / Instructor / Admin — via Roles)

Course

CourseContent

Enrollment


**Credentials:**

| Role           | Username              | Password       |
| -------------- | ----------------------| -------------  |
| **Admin**      | [admin@123.com]       | admin@123      |
| **Instructor** | [instructor@123.com]  | ins@123        |
| **Student**    | [student@123.com]     | student@123    |

**Render Deployment Url: **  https://learning-management-system-cuum.onrender.com

**Source Code ** : https://github.com/kdeepa08/learning-management-system

**Environment variables **

**API:**

Admin:

| GET    | `/api/admin/users`     

| GET    | `/api/admin/students`    

| GET    | `/api/admin/instructors` 

| POST   | `/api/admin/users`       

| GET    | `/api/admin/users/{id}`  

| DELETE | `/api/admin/users/{id}`  

**Instructor : **

| GET    | `/api/instructor/courses`     

| GET    | `/api/instructor/courses/{id}` 

| GET    | `/api/instructor/courses/{id}/contents`

| POST   | `/api/instructor/courses/{id}/contents` 

| DELETE | `/api/instructor/contents/{contentId}`  

**Student : **

| GET    | `/api/students/courses`     

| GET    | `/api/students/courses/{id}` 

| POST   | `/api/students/courses/{id}/enroll`              

| POST   | `/api/students/courses/{id}/payment`         

| POST   | `/api/students/courses/{id}/payment/success` 

| GET    | `/api/students/courses/{id}/contents` 

| GET    | `/api/students/contents/{contentId}`  







