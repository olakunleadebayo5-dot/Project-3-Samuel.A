# Project-3-Samuel.A
# 🛒 E-Commerce SQL Data Analysis Project

> **Project 3 of my Data Analytics journey** — Using SQL to extract meaningful insights from a real-world e-commerce dataset.

---

## 📌 Project Overview

This project involves analyzing an e-commerce orders dataset (2023–2025) using **MySQL** to answer key business questions around revenue, product performance, customer behavior, and marketing effectiveness.

---

## 🗂️ Dataset

| Detail | Info |
|---|---|
| **File** | `Dataset_for_Data_Analytics.csv` |
| **Records** | 1,200 orders |
| **Period** | January 2023 – June 2025 |
| **Tool** | MySQL Workbench |

### Columns

`OrderID` · `Date` · `CustomerID` · `Product` · `Quantity` · `UnitPrice` · `ShippingAddress` · `PaymentMethod` · `OrderStatus` · `TrackingNumber` · `ItemsInCart` · `CouponCode` · `ReferralSource` · `TotalPrice/Revenue` · `RevenueAfterCouponDiscount`

---

## 🧹 Data Preparation & Transformation

Prior to analysis, the dataset underwent several preprocessing steps in **Microsoft Excel**:

- ✅ **Data Cleaning & Validation** — checked for errors and inconsistencies across all columns
- ✅ **Duplicate Check** — confirmed no duplicate records existed in the raw dataset
- ✅ **Handling Missing Values** — blank cells in the `CouponCode` column were replaced with `No Coupon Code`

---

## 🔍 SQL Queries Covered

| # | Query Type | Description |
|---|---|---|
| 1 | `SELECT` | View all records and specific columns |
| 2 | `COUNT` | Total number of orders |
| 3 | `SUM` / `AVG` | Total revenue and average order value |
| 4 | `GROUP BY` | Revenue breakdown by product |
| 5 | `GROUP BY` | Orders by fulfillment status |
| 6 | `GROUP BY` | Orders and revenue by payment method |
| 7 | `GROUP BY` | Performance by referral/marketing source |
| 8 | `ORDER BY` + `LIMIT` | Top 10 highest revenue orders |
| 9 | `GROUP BY` | Coupon code usage and discount impact |

---

## 📊 Key Findings

### 💰 Revenue Summary
- **Total Orders:** 1,200
- **Total Revenue:** $1,264,761.96
- **Average Order Value:** $1,053.97

### 🏆 Top Products by Revenue
1. Chair — $195,620.11
2. Printer — $195,612.61
3. Laptop — $192,126.56

### 📦 Order Status
- Only **19.3%** of orders were successfully delivered
- **41.4%** were either cancelled or returned — a key area for improvement

### 📣 Best Marketing Channel
- **Instagram** led with 259 orders and $275,285.45 in revenue

### 🎟️ Coupon Impact
- **WINTER15** caused the highest revenue loss: **$45,372.53**
- **SAVE10** reduced revenue by: **$30,484.00**

---

## 💡 Recommendations

1. Investigate the high cancellation and return rates (41%+)
2. Scale Instagram marketing investment
3. Review the WINTER15 discount strategy
4. Prioritize Chair and Printer in inventory planning
5. Incentivize Credit Card payments — highest revenue per transaction

---

## 🛠️ Tools Used

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

---

📌 Follow my journey on [LinkedIn](#) · [X (Twitter)](#)

---

*Project 3 — SQL Data Analysis | TechCrush Data Analytics Program*
