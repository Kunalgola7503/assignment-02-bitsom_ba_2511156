## Vector DB Use Case

### "A law firm wants to build a system where lawyers can search 500-page contracts by asking questions in plain English (e.g., 'What are the termination clauses?'). Would a traditional keyword-based database search suffice? Justify why or why not, and explain what role a vector database would play in this system."

A traditional keyword-based database search would not be sufficient for this use case. Legal documents such as 500-page contracts often use complex language, synonyms, and varied phrasing. A keyword search relies on exact matches, so it may fail to retrieve relevant sections if the wording in the query does not exactly match the text in the document. For example, a query like “termination clauses” might miss sections labeled as “contract cancellation terms” or “agreement termination conditions.”

In contrast, a vector database enables semantic search by using embeddings. The contract text is converted into vector representations that capture the meaning of each section rather than just the exact words. Similarly, a user’s query is also converted into a vector. The system then retrieves the most relevant sections by comparing vector similarity, allowing it to find conceptually related content even when different terminology is used.

This approach is especially useful for large legal documents where information is spread across multiple sections and expressed in formal language. A vector database improves accuracy, reduces search time, and provides more relevant results by understanding intent rather than relying on exact keyword matches.

Therefore, a vector database plays a critical role in enabling intelligent, context-aware search in legal systems, making it far more effective than traditional keyword-based methods.