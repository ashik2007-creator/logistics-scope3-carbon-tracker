import sqlite3

# 1. Connect to SQLite database
con = sqlite3.connect('esg.db')
cur = con.cursor()

# 2. Run the SQL file you created
with open('esg_queries.sql', 'r') as f:
  cur.executescript(f.read())

# 3. Print the ESG KPI Results
print('\n=== ESG FREIGHT CARBON EMISSIONS BY MODE ===\n')
print(f"{'Mode':<10} | {'Total tkm':<12} | {'Total kg CO2e':<15}")
print('-' * 45)

query = """
SELECT 
    mode,
    SUM(weight_tonnes * distance_km) AS total_tkm,
    ROUND(SUM((weight_tonnes * distance_km * emission_factor_g) / 1000.0), 2) AS total_kg_co2e
FROM freight_shipments
GROUP BY mode
ORDER BY total_kg_co2e DESC;
"""

for row in cur.execute(query):
  print(f'{row[0]:<10} | {row[1]:<12.1f} | {row[2]:<15.2f}')

con.close()