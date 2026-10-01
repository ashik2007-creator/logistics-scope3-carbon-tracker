# Multimodal Freight Decarbonization & Scope 3 Carbon Tracker

An end-to-end data analytics and carbon accounting engine built to model supply chain emissions across road, rail, air, and ocean freight corridors. This project applies the **GLEC Framework (Global Logistics Emissions Council)** aligned with the **GHG Protocol Corporate Value Chain (Scope 3 Category 4)** standard.

---

## 📊 Executive Dashboard Summary

![Logistics ESG Dashboard](Screenshot%202026-10-01%20081509.png)

### Key Metrics
- **Total Freight Activity:** 244,050.0 Tonne-Kilometers (tkm)
- **Total Line-Haul Carbon Footprint:** 49,576.20 kg CO₂e
- **Critical Finding:** Air cargo represented only **31.3%** of total tonne-kilometer volume but accounted for **92.9%** of entire supply chain emissions.

---

## 🛠️ Data Pipeline & Architecture

- **`shipment_data.csv`**: Raw shipment activity data (Origin, Destination, Mode, Weight in tonnes, Distance in km).
- **`esg_queries.sql`**: Relational data schema and analytical aggregation queries.
- **`run_esg.py`**: SQLite database automation pipeline and terminal reporter.
- **Google Sheets**: Reporting dashboard, KPI scorecards, and modal carbon share visualization.

---

## 📐 Carbon Accounting Methodology

Emissions are calculated using standard GLEC emission factors:

$$\text{Tonne-Kilometers (tkm)} = \text{Weight (Tonnes)} \times \text{Distance (km)}$$

$$\text{Emissions (kg } CO_2e\text{)} = \frac{\text{tkm} \times \text{Emission Factor (g } CO_2e\text{/tkm)}}{1000}$$

### Standard Emission Factors Applied:
| Transport Mode | Emission Factor ($g CO_2e / tkm$) |
| :--- | :--- |
| **Air Freight** | 602.0 |
| **Road (Diesel Truck)** | 96.0 |
| **Rail (Electric)** | 22.0 |
| **Ocean Container** | 16.0 |

---

## 📈 Modal Comparison Results

| Transport Mode | Total Activity (tkm) | Total Emissions (kg CO₂e) | % of Emissions |
| :--- | :--- | :--- | :--- |
| **Air** | 76,500.0 | 46,053.00 | **92.9%** |
| **Ocean** | 104,850.0 | 1,677.60 | **3.4%** |
| **Rail** | 56,400.0 | 1,240.80 | **2.5%** |
| **Road** | 6,300.0 | 604.80 | **1.2%** |

---

## 💡 Strategic Business Recommendations

1. **Prioritize Selective Modal Shifts:** Shift non-urgent air cargo corridors to combined ocean/rail freight where schedule buffers exist, reducing corridor line-haul emissions by up to **96%**.
2. **Carrier ESG Procurement:** Mandate standardized fuel and load efficiency metrics from third-party logistics (3PL) providers during annual RFP evaluations.
