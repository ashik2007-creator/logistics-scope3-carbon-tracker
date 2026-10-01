-- 1. Create the Freight Shipments Table
CREATE TABLE freight_shipments (
    shipment_id VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    mode VARCHAR(20),
    weight_tonnes DECIMAL(10, 2),
    distance_km INT,
    emission_factor_g DECIMAL(10, 2)
);
-- 2. Insert Sample Logistics Data
INSERT INTO freight_shipments
VALUES (
        'SH001',
        'Mumbai',
        'Dubai',
        'Ocean',
        45.0,
        1930,
        16.0
    ),
    (
        'SH002',
        'Delhi',
        'Frankfurt',
        'Air',
        12.5,
        6120,
        602.0
    ),
    (
        'SH003',
        'Chennai',
        'Bengaluru',
        'Road',
        18.0,
        350,
        96.0
    ),
    (
        'SH004',
        'Kochi',
        'Colombo',
        'Ocean',
        30.0,
        600,
        16.0
    ),
    (
        'SH005',
        'Ahmedabad',
        'Delhi',
        'Rail',
        60.0,
        940,
        22.0
    );