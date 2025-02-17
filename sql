import random
from datetime import datetime, timedelta

def generate_sql_insert(start_date="2021-01-01", end_date="2025-02-28"):
    start = datetime.strptime(start_date, "%Y-%m-%d")
    end = datetime.strptime(end_date, "%Y-%m-%d")
    delta = timedelta(hours=1)  # Generate data every 1 hour

    sql_statements = []
    current_date = start

    while current_date <= end:
        hour = current_date.hour
        # Define working hour conditions
        if 6 <= hour < 19:
            value = random.randint(100, 500)
        else:
            value = random.randint(40, 90)

        sql = f"""
        INSERT INTO table_name (data_name, sensor_number, section, department_code, extracted_datetime, value, consumption_type_id) 
        VALUES ('actual', 1, 'a', 1, '{current_date.strftime('%Y-%m-%d %H:%M:%S')}', {value}, 1);
        """
        sql_statements.append(sql.strip())
        current_date += delta

    return sql_statements

# Example usage
sql_queries = generate_sql_insert()
for query in sql_queries[:5]:  # Print first 5 queries for preview
    print(query)
------------------------------
import random
from datetime import datetime, timedelta

def generate_sql_insert(start_date="2021-01-01", end_date="2025-02-28"):
    start = datetime.strptime(start_date, "%Y-%m-%d")
    end = datetime.strptime(end_date, "%Y-%m-%d")
    delta = timedelta(hours=1)  # Generate data every 1 hour

    sql_statements = []
    current_date = start

    while current_date <= end:
        hour = current_date.hour
        # Define working hour conditions
        if 6 <= hour < 19:
            value = random.randint(100, 500)
        else:
            value = random.randint(40, 90)

        sql = f"""
         ('actual', 1, 'a', 1, '{current_date.strftime('%Y-%m-%d %H:%M:%S')}', {value}, 1),
        """
        sql_statements.append(sql.strip())
        current_date += delta

    return sql_statements

# Example usage
sql_queries = generate_sql_insert()
for query in sql_queries:  # Print first 5 queries for preview
    print(query)
-------------------------
import random
from datetime import datetime, timedelta

def generate_sql_insert(start_date="2021-01-01", end_date="2025-02-28"):
    start = datetime.strptime(start_date, "%Y-%m-%d")
    end = datetime.strptime(end_date, "%Y-%m-%d")
    delta = timedelta(hours=1)  # Generate data every 1 hour

    sql_statements = []
    current_date = start

    while current_date <= end:
        hour = current_date.hour
        # Define working hour conditions
        if 6 <= hour < 19:
            value = random.randint(100, 500)
        else:
            value = random.randint(40, 90)

        sql = f"INSERT INTO table_name (data_name, sensor_number, section, department_code, extracted_datetime, value, consumption_type_id) " \
              f"VALUES ('actual', 1, 'a', 1, '{current_date.strftime('%Y-%m-%d %H:%M:%S')}', {value}, 1);"
        sql_statements.append(sql)
        current_date += delta

    return sql_statements

# Generate SQL file
if __name__ == "__main__":
    sql_queries = generate_sql_insert()
    with open("inserts.sql", "w") as file:
        for query in sql_queries:
            file.write(query + "\n")
    print("SQL file 'inserts.sql' has been generated.")
