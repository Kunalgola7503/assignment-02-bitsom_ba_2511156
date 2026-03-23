## Architecture Recommendation

### "A fast-growing food delivery startup collects GPS location logs, customer text reviews, payment transactions, and restaurant menu images. Which storage architecture would you recommend — Data Warehouse, Data Lake, or Data Lakehouse? Give at least 3 specific reasons for your choice."

For a fast-growing food delivery startup handling diverse data such as GPS logs, customer reviews, payment transactions, and menu images, a Data Lakehouse architecture is the most suitable choice. This is because the data is highly varied, including structured (transactions), semi-structured (logs, reviews), and unstructured (images) formats.

First, a Data Lakehouse combines the flexibility of a Data Lake with the reliability of a Data Warehouse. It can store all types of data in their raw form while still supporting structured querying and analytics, which is essential for deriving business insights from transactions and user behavior.

Second, scalability is critical for a growing startup. A Data Lakehouse can efficiently handle large volumes of continuously generated data such as GPS logs and real-time reviews without requiring rigid schema definitions upfront.

Third, it supports advanced analytics and machine learning use cases. For example, customer reviews can be analyzed for sentiment, GPS data can be used for route optimization, and images can be processed for menu recognition. A traditional Data Warehouse would struggle with unstructured data, while a pure Data Lake lacks strong consistency and query performance.

Therefore, a Data Lakehouse provides the best balance of flexibility, scalability, and analytical capability, making it ideal for modern, data-driven applications.