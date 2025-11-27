# Technical Specifications

## Technologies
- SQL Server (Staging + DWH)
- SSIS (ETL)
- Power BI (Reporting)

## Data Model
Star schema with:
- FactMobility
- DimDate
- DimEvent
- DimLocation
- DimTransportMode

## ETL
- SSIS packages manage ingestion, transformation, and loading.
- Logging and quality checks included.
