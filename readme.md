# 📘 PostgreSQL Learning Progress – README

## **All Slide Links**

🔗 Practice Repo: https://github.com/Apollo-Level2-Web-Dev/postgreSQL_query_task


## ✅ Summary

So far, I have learned:

* Table modification using `ALTER TABLE`
* Column & table constraints
* Data retrieval using `SELECT`
* Filtering, sorting, searching
* Scalar and aggregate functions

---

## 🗂️ Table Used

### `students2`

Used for practicing `SELECT`, filtering, sorting, and functions.

### `teachers`

Used for practicing `ALTER TABLE` operations.

---

## 🔧 ALTER TABLE (Table Modification)

I learned how to modify an existing table using `ALTER TABLE`.

### 1️⃣ Rename Table

```sql
ALTER TABLE employee RENAME TO teachers;
```

### 2️⃣ Add Column

```sql
ALTER TABLE teachers ADD COLUMN email VARCHAR(80);
```

### 3️⃣ Drop Column

```sql
ALTER TABLE teachers DROP COLUMN email;
```

### 4️⃣ Rename Column

```sql
ALTER TABLE teachers RENAME COLUMN id TO user_id;
```

### 5️⃣ Modify Column Data Type

```sql
ALTER TABLE teachers 
ALTER COLUMN name TYPE VARCHAR(100);
```

### 6️⃣ Set Default Value

```sql
ALTER TABLE teachers 
ALTER COLUMN email SET DEFAULT 'test@gmail.com';
```

### 7️⃣ Drop Default Value

```sql
ALTER TABLE teachers 
ALTER COLUMN email DROP DEFAULT;
```

### 8️⃣ Add NOT NULL Constraint

```sql
ALTER TABLE teachers 
ALTER COLUMN email SET NOT NULL;
```

### 9️⃣ Drop NOT NULL Constraint

```sql
ALTER TABLE teachers 
ALTER COLUMN email DROP NOT NULL;
```

---

## 🔐 Constraints (Table Level)

### Add UNIQUE Constraint

```sql
ALTER TABLE teachers
ADD CONSTRAINT unique_teachers_email UNIQUE(email);
```

### Add PRIMARY KEY

```sql
ALTER TABLE teachers
ADD CONSTRAINT pk_teachers_email PRIMARY KEY(user_id);
```

### Drop Constraint

```sql
ALTER TABLE teachers
DROP CONSTRAINT unique_teachers_email;
```

---

## 📊 SELECT Queries (Data Retrieval)

### Basic SELECT

```sql
SELECT * FROM students2;
SELECT first_name, age FROM students2;
```

### Column Alias

```sql
SELECT first_name AS "First Name" FROM students2;
```

### Sorting (ORDER BY)

```sql
SELECT first_name, age 
FROM students2
ORDER BY age DESC;
```

### DISTINCT Values

```sql
SELECT DISTINCT country FROM students2;
SELECT DISTINCT course FROM students2;
```

---

## 🔍 Filtering Data (WHERE Clause)

### Using `=`

```sql
SELECT * FROM students2 WHERE country = 'Nepal';
```

### Using `AND`, `OR`

```sql
SELECT first_name, age 
FROM students2
WHERE country = 'Nepal' OR country = 'Bangladesh';
```

```sql
SELECT first_name, age, grade
FROM students2
WHERE age = 22 AND grade = 'B';
```

---

## ⚖️ Comparison Operators

```sql
SELECT * FROM students2 WHERE age < 22;
SELECT * FROM students2 WHERE country != 'Nepal';
SELECT * FROM students2 WHERE country <> 'Nepal';
```

---

## 📐 BETWEEN Operator

```sql
SELECT * FROM students2
WHERE age BETWEEN 18 AND 20;
```

---

## 📦 IN Operator

```sql
SELECT * FROM students2
WHERE country IN ('Bangladesh', 'India', 'Nepal');
```

---

## 🔎 Searching Text (LIKE / ILIKE)

### LIKE (Case Sensitive)

```sql
SELECT * FROM students2
WHERE first_name LIKE 'A%';
```

### ILIKE (Case Insensitive)

```sql
SELECT * FROM students2
WHERE email ILIKE 'a%';
```

---

## 🚫 NOT Operator

```sql
SELECT * FROM students2
WHERE NOT country = 'Bangladesh';
```

---

## 🔤 Scalar Functions

### UPPER

```sql
SELECT UPPER(first_name) FROM students2;
```

### LOWER

```sql
SELECT LOWER(first_name) FROM students2;
```

### CONCAT

```sql
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM students2;
```

### LENGTH

```sql
SELECT LENGTH(first_name) FROM students2;
```

---

## **📈 Aggregate Functions - Practical Examples**

### **MAX** - Find maximum value
```sql
SELECT MAX(age) FROM students2;
```

### **MIN** - Find minimum value
```sql
SELECT MIN(age) FROM students2;
```

### **AVG** - Calculate average
```sql
SELECT AVG(age) FROM students2;
```

### **SUM** - Calculate total sum
```sql
SELECT SUM(age) FROM students2;
```

### **COUNT** - Count rows/values
```sql
SELECT COUNT(first_name) FROM students2;
```

### **Additional Aggregate Examples:**

#### **COUNT with different approaches:**
```sql
-- Count all rows (including NULL values)
SELECT COUNT(*) FROM students2;

-- Count non-NULL values in a specific column
SELECT COUNT(age) FROM students2;

-- Count distinct values
SELECT COUNT(DISTINCT age) FROM students2;
```

#### **Combining multiple aggregates:**
```sql
SELECT 
    COUNT(*) AS total_students,
    AVG(age) AS average_age,
    MIN(age) AS youngest,
    MAX(age) AS oldest,
    SUM(age) AS total_years
FROM students2;
```

#### **Aggregates with WHERE clause:**
```sql
-- Average age of active students only
SELECT AVG(age) 
FROM students2 
WHERE isActive = true;

-- Count students older than 20
SELECT COUNT(*) 
FROM students2 
WHERE age > 20;
```

**Note:** Aggregate functions operate on multiple rows and return a single value. They're typically used with `GROUP BY` clause for grouped calculations.


---