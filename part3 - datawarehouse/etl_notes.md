## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: Raw data had inconsistent date formats (DD-MM-YYYY, MM/DD/YYYY), making time-based analysis unreliable.
Resolution: Converted all dates to YYYY-MM-DD and extracted month and year for the dim_date table.

### Decision 2 — Handling NULL Values
Problem: Missing values in fields like store and category caused incomplete joins and inaccurate results.
Resolution: Replaced NULLs with "Unknown" to maintain data completeness and ensure consistent joins.

### Decision 3 — Standardizing Category Casing
Problem: Categories appeared in multiple formats (e.g., "electronics", "ELECTRONICS"), leading to incorrect grouping.
Resolution: Standardized all categories to consistent casing (Electronics, Clothing, Groceries) for accurate aggregation.