# FIFO & Batch Tracking in Business Central

This project simulates a perishable inventory tracking system in **Microsoft Dynamics 365 Business Central**, using **FIFO (First In, First Out)** logic and **batch/lot tracking**. It is designed for industries that manage **perishable goods**, such as food, pharmaceuticals, or chemicals, where inventory must be consumed based on age and expiry.

>  Built entirely using AL language in an offline BC sandbox environment.

---

##  Purpose

To demonstrate how FIFO and batch tracking logic can be implemented using **custom AL objects** in Business Central. The goal is to:

- Ensure older inventory is consumed first
- Prevent expired stock from being shipped
- Simulate the batch management behavior that mimics a real ERP system

This project was developed in response to a real freelance use case posted on Upwork.

---

##  Data Model

###  Custom Table: `Item Batch Ledger`
Tracks:
- `Item No.`
- `Batch No.`
- `Entry Date`
- `Expiration Date`
- `Quantity Available`
- `Used Quantity`
- `Remaining Quantity`

This simulates FIFO batches, replacing reliance on `Item Ledger Entry` for demo purposes.

---

### Features

### 🔹 Batch Ledger Table (`table 50100`)
- Simulates batch-based inventory entries
- Auto-calculates remaining quantity
- Supports manual entry for testing/demo

### 🔹 Item Batch List Page (`page 50100`)
- Displays all batch records
- Shows quantities and expiry status
- Acts as the batch management dashboard

### 🔹 Sales Line Extension (`pageextension 50101`)
- Adds optional field: `Batch No.` to sales lines
- Prepares the UI for batch-based item consumption simulation

---

##  Future Logic (Coming Soon)

- FIFO Auto-Assignment: Pick oldest batch for a given item
- Expiry Warning Trigger: Notify if batch is near or past expiration
- Batch Consumption Codeunit: Deduct quantities and update ledger
- Report: “Batches Expiring in Next X Days”

---

##  Screenshots

| Batch List Page | Batch Fields |
|-----------------|--------------|
| ![Item Batch List](screenshots/item-batch-list.png) | ![Batch Form](screenshots/batch-form.png) |

---

##  Project Structure

