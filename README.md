# 🧪 FIFO & Batch Tracking in Business Central

A lightweight AL extension that simulates **batch tracking and FIFO (First-In, First-Out) logic** in Microsoft Dynamics 365 Business Central.

> 💡 This project is ideal for showcasing real-world ERP development skills — from table design and UI, to business logic and Role Center integration.

---

## 📌 Purpose

This project helps manage **perishable inventory** such as food, pharmaceuticals, or chemical products by:

- Recording batches with expiration dates
- Tracking available and used quantities
- Selecting batches using **FIFO logic**
- Assigning batches at the point of sale

---

## 🧩 Key Features

| Feature                        | Purpose                                                                 |
|-------------------------------|-------------------------------------------------------------------------|
| `Item Batch Ledger` Table     | Stores batch records, quantities, expiration info                       |
| `Item Batch List` Page        | Full list view of all batches                                           |
| `Item Batch Card` Page        | Add/edit individual batch entries                                       |
| `Batch Tester` Page           | Simulate FIFO consumption of item batches                               |
| `Sales Line Extension`        | Add `Batch No.` field to Sales Orders and auto-fill via FIFO logic      |
| `Batch Consumption Codeunit`  | Reusable logic to consume oldest batch (FIFO)                           |
| `ListPart` + `Role Center`    | Role Center dashboard for batch summary + quick navigation              |

---

## 🚀 Quick Guide: How to Use This Project

### 1. 🔧 Setup

- Clone or download this repo
- Open the project in **Visual Studio Code**
- Deploy all AL files to your **local/offline BC sandbox**
- Publish the extension

---

### 2. 📥 Add Inventory Batches

- Open **Item Batch Card** from the Role Center
- Add batches manually:

  - `Item No.`
  - `Batch No.` (auto-generated if No. Series `BATCH` is configured)
  - `Entry Date`, `Expiration Date`
  - `Quantity Available`

---

### 3. 🧾 Create a Sales Order (Optional)

- Go to **Sales Orders**
- Add a line for the item
- Select `Batch No.` (lookup shows available batches for that item)
- Or leave it blank and it will auto-fill with the oldest available batch

---

### 4. ⚙️ Test FIFO Logic

- Open the **Batch Tester** page (search: `Batch Tester`)
- Select an item
- Enter a quantity to consume
- Click **“Consume Oldest Batch”**
- Confirm that the batch was correctly updated in the ledger

---

### 5. 📊 Monitor from Role Center

- Use the **Role Center dashboard** to:
  - View active batches (summary)
  - Navigate to full list or batch creation pages

---

## 🎥 Reference: Easier Built-in Ways

This custom solution is built from scratch in AL for learning/demo purposes.

🧠 However, **Business Central also includes native ways** to handle batch/lot tracking (e.g. item tracking lines, warehouse features).  
You can learn more from this helpful overview:  
🔗 [YouTube – Batch and Lot Tracking in Business Central](https://youtu.be/fy3j2mnN-Po)

---

## 💻 Tech Stack

- AL Language (VS Code)
- Microsoft Dynamics 365 Business Central
- Local sandbox or Docker instance

---

## 🙋‍♂️ Author

**Antony Titan**  
Business Central Intern & ERP Developer  
🔗 [GitHub](https://github.com/iconstar11)  
🔗 [LinkedIn](https://www.linkedin.com/in/antonytitan)

---

## 📝 License

This project is provided for learning and portfolio use. Feel free to fork or adapt it for your own Business Central demo projects.
