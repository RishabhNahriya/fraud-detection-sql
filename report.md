# 🧾 Fraud Detection SQL Project – Report

## 🧠 Objective

The goal of this project is to detect potentially fraudulent financial transactions using structured SQL queries. This system analyzes transactional and user data to identify anomalies and patterns that often indicate fraud.

---

## 📂 Data Files

### 📄 `users.csv`
Contains user profile information:
- `user_id`
- `name`
- `registered_location`
- `registered_device`

### 📄 `transactions.csv`
Contains transaction records:
- `transaction_id`
- `user_id`
- `amount`
- `date`
- `location`
- `device_type`
- `status` (Success / Failed)

### 📄 `suspicious_transactions.csv`
Result of fraud detection queries. Transactions that triggered red flags such as:
- Amount > ₹10,000
- Location or device mismatch
- Excessive failed attempts
- Unusual frequency of transactions

---

## 🔍 Detection Rules in SQL

Stored in `queries.sql`:
- High-value transactions
- Transactions from mismatched locations or devices
- Multiple transactions by same user in a short window
- Multiple failed attempts by the same user

---

## 📊 Output & Insights

- All suspicious transactions were exported for further review
- Queries help identify users likely to be compromised
- Simple and effective rule-based fraud detection using SQL only

---

## 🚀 Future Enhancements

- Integrate with Python and Machine Learning models
- Add real-time streaming data (Kafka)
- Build a dashboard using Streamlit

---

## 👨‍💻 Author

**Rishabh Nahriya**  
Email: chandra.nahriya.ug22@nsut.ac.in  
GitHub: [@RishabhNahriya](https://github.com/RishabhNahriya)
