# Logistics ESG Emission Framework

## Formula

Tonne-Kilometers (tkm) = Weight (Tonnes) _ Distance (km)
Emission (kg CO2e) = (tkm _ Emission Factor) / 1000

## Emission Factor (g CO2e per tkm)

- Air (Freigh)t: 602 g CO2e / tkm
- Road (Diesel Truck): 96 g CO2e / tkm
- Ocean (Container): 16 g CO2e / tkm
- Rail (Electric): 22 g CO2e / tkm

# Freight Decarbonization & Scope 3 Carbon Engine

## Overview

An automated multimodal logistics emissions tracking pipeline built using SQLite, Python, and the GLEC Framework (Global Logistics Emissions Council) aligned with GHG Protocol Corporate Standard (Scope 3 Category 4).

## Data & Architecture

- **Database:** SQLite ('esg.db')
- **Key Variables:** Shipment ID, Origin, Destination, Transport Mode, Weight (Tonnes), Distance (km), GLEC Emission Factor (g CO2e/tkm)
- **Core KPIs:**
  - Tonne-Kilometer Activity: 'Weight (t) \* Distance (km)'
  - Total Emissions: '(tkm \* Factor) / 1000' (in kg CO2e)

## Key Findings

- Total Freight Volume: 244,050.0 tkm
- Total Scope 3 Carbon Footprint: 49,576.20 kg CO2e
- Modal Skew: Air cargo represented 31.4% of total tkm activity but generated 92.9% of total supply chain emissions.
- Actionable Recommendation: Transition priority air cargo corridors where transit-time buffers exist to multimodal ocean/rail to reduce line-haul emissions by up to 96%.
