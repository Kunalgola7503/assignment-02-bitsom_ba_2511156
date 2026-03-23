## Storage Systems

To meet the four key goals of the hospital system, a combination of storage solutions is used. For storing raw and historical data such as patient records, ICU vitals, and administrative logs, a Data Lake is used. It allows storage of structured, semi-structured, and unstructured data in a scalable and cost-effective manner. For generating monthly management reports like bed occupancy and departmental costs, a Data Warehouse is used, as it provides optimized querying, aggregation, and reporting capabilities.

For enabling natural language queries by doctors, a Vector Database is used. Patient history data is converted into embeddings and stored in the vector database, allowing semantic search and accurate retrieval of relevant medical information. For real-time ICU monitoring data, a streaming system (such as Kafka) is used to ingest and process continuous data efficiently before storing it in the data lake.

Together, these systems ensure that each type of workload—transactional, analytical, AI-based, and real-time—is handled by the most appropriate storage solution.

## OLTP vs OLAP Boundary

In this architecture, the OLTP (Online Transaction Processing) system includes operational systems such as Electronic Health Records (EHR), ICU monitoring devices, and hospital administrative systems. These systems handle real-time data entry and updates, such as patient admissions, treatments, and vital signs.

The OLAP (Online Analytical Processing) system begins once the data is ingested into the data lake and processed through ETL pipelines. From there, data is transformed and loaded into the data warehouse for reporting and into the vector database for semantic querying. The OLAP layer supports analytics, machine learning, and decision-making processes, such as predicting patient readmission risk and generating management reports.

Thus, the boundary between OLTP and OLAP lies at the data ingestion layer, where operational data is transferred into analytical systems for further processing.

## Trade-offs

A significant trade-off in this design is the increased architectural complexity due to the use of multiple systems such as data lake, data warehouse, vector database, and streaming infrastructure. While this improves scalability, flexibility, and performance, it also increases system maintenance, cost, and operational overhead.

To mitigate this, orchestration tools like Apache Airflow can be used to manage data pipelines efficiently. Additionally, using managed cloud services can reduce infrastructure complexity and improve reliability. Standardizing data formats and implementing strong data governance practices can also help maintain consistency across systems.

Despite the added complexity, this design ensures high performance, scalability, and the ability to handle diverse data requirements, making it suitable for a modern, AI-powered healthcare system.