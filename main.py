
# Import mysql connector
import mysql.connector

# Make the database connection
conn = mysql.connector.connect(
    host="localhost", user="root", password="12345", database="KARYAWAN", port=3308)

# Create a cursor object
cursor = conn.cursor()

# Declare SQL Query to insert a record into the database (KARYAWAN)
sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
    )
values = ("Kirill", "Vladimir", 25, "Male", 5000)   # Update the values here

try:
    # Execute the SQL Command
    cursor.execute(sql, values)
    # Commit the changes to the database
    conn.commit()
    print("Data inserted successfully.")

except Exception as e:
    # Roll Back if there is an issue
    conn.rollback()
    print("Error:", e)

# Close the database connection
cursor.close()
conn.close()



