## Anomaly Analysis

### Insert Anomaly 
    In the given orders_flat.csv file each row represents a full transaction with details of order, customer, product and sales representative. For instance, in rows like order_id = ORD2001, columns in accordance to that particular order id are stored with various other details about the customer and the order. Because of this structure, adding a new product on its own without also giving unrelated information like customer_id, etc is likely not possible. This results in an insert anomaly, as the table forces unnecessary data entry.

### Update Anomaly 
    In the orders_flat.csv dataset, customers and sales representatives details are repeated across multiple rows for different oredrs. For instance, a customer with order_id = ORD2001 may have their customer_city stored multiple times. If the customer's city change, it must be updated in all such rows. Failure to update even one instance results in inconsistent data, leading to an update anomaly.
    
### Delete Anomaly 
    In the orders_flat.csv dataset, customer and product details are stored together with order information in each row. For example, if the only order associated with a customer (e.g., order_id = ORD2001) is deleted, all related customer details such as customer_id and customer_city are also lost. This results in a delete anomaly, as deleting a single record unintentionally removes important information about other entities.

### Normalisation Justification

    Keeping all data in a single table may appear to be simpler at first, but it causes serious problems as the system grows and data volume increases. In the orders_flat.csv dataset, client, product, and sales representative information is duplicated across numerous rows for each order. This causes data redundancy, increases storage requirements, and makes the system more difficult to maintain.
    
    For example, the customer_city  appears in many rows. If a customer relocates to a new city, the change must be made in each row where that customer appears. Missing just one update can result in conflicting data, indicating an update anomaly. Similarly, deleting the only order associated with a client may cause all related customer records to be destroyed, resulting in a delete anomaly.
    
    As a result, normalization is not an overly complex design process, but rather a necessary one. Redundancy is reduced while data integrity is maintained by separating data into various tables such as customers, orders, and products. Achieving Third Normal Form (3NF) assures that each table only contains important attributes, reducing anomalies and enhancing data consistency.
    
    Overall, normalizing results in a more scalable, reliable, and manageable database system, making it vital for real-world applications rather than adding unneeded complexity.