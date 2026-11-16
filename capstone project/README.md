# LogPulse Documentation Structure & Overview

Welcome to the **LogPulse** project documentation. This directory organizes the full lifecycle documentation of the project—from real-time development logs to modular guides and a unified, publication-grade master document.

---

## Folder Organization

```text
final/
│
├── README.md                                # This guide
├── LogPulse - Consolidated Documentation.docx # Consolidated Master Document (All-in-One)
├── LogPulse - Consolidated Documentation.pdf  # Consolidated Master Document (Print-ready PDF)
│
├── raw documents/                           # Live / On-time execution notes
│   ├── OrderApp - Devlopment & Testing.docx
│   ├── OrderApp - EC2 hosting.docx
│   ├── Setup fluentbit - Log monitoring.docx
│   ├── aji-log-investigation-ec2 setup with mysql.docx
│   ├── python log processer app - Dev, Testing & Deployment.docx
│   ├── aji-log-investigation backend & frontend - Dev, Test & Deploy.docx
│   ├── Snowflake Key pair generation.docx
│   ├── Snowflake - Setup (DB, Warehouse, Schema, Table, Tasks, snowflake streaming).docx
│   ├── log-data-pusher - Dev, Test & Deploy.docx
│   ├── Power BI connect with snowflake.docx
│   └── Evidence and Demo checkpoints.docx
│
└── refined documents/                       # Modular specialized guides
    ├── LogPulse - Master Documentation.pdf
    ├── LogPulse - AWS EC2 and Networking Guide.pdf
    ├── LogPulse - Tools Usage Guide.pdf
    ├── LogPulse - PowerBI and DAX Guide.pdf
    └── LogPulse - List of prompts used.pdf
```

---

## 1. `raw documents/` — Real-Time Live Development Notes

The **`raw documents/`** folder contains the **original, on-time (live) documentation** recorded chronologically during the actual implementation, testing, configuration, and cloud deployment of LogPulse.

### What It Represents:
- **Authentic Engineering Trail**: Raw notes, commands, terminal snippets, configuration files, and initial validation screenshots captured directly while building the system step-by-step.
- **Chronological Sequence**: Follows the natural execution order:
  1. *Orders Microservice*: Local Spring Boot development and testing.
  2. *Cloud Hosting & Edge Gateway*: EC2 instance launch, Elastic IP binding, and Nginx reverse proxy with correlation ID handling.
  3. *Log Shipping*: Fluent Bit tailing and SQLite state persistence.
  4. *Central Host & DB*: Investigation EC2 provisioning and MySQL container setup.
  5. *Telemetry Normalization*: Python FastAPI normalizer and private VPC HTTP streaming.
  6. *Full-Stack CI/CD*: GitHub Actions automated workflow and GHCR image publishing.
  7. *Cloud Data Warehousing*: Snowflake Medallion schemas, CDC Streams, parent-child Task graphs, and RSA key-pair authentication.
  8. *Streaming Ingestion*: Log Data Pusher service using Snowpipe Streaming Java SDK.
  9. *Business Intelligence*: Power BI setup connecting to Snowflake via Import mode.
  10. *Production Evidence*: 32 comprehensive verification checkpoints proving correlation tracing, fault injection, lifecycle progression, and AI-resistant PII masking.

---

## 2. `refined documents/` — Structured & Specialized Guides

The **`refined documents/`** folder contains the **well-structured, professionally formatted, and rephrased documents** broken down into specialized operational guides.

### What It Contains:
- **`LogPulse - Master Documentation.pdf`**: Comprehensive architecture and implementation guide explaining the system design, microservices, and end-to-end telemetry pipeline.
- **`LogPulse - AWS EC2 and Networking Guide.pdf`**: Specialized cloud infrastructure guide detailing EC2 sizing, Elastic IP allocation, and security group port hardening (specifically restricting Port 8081 for Fluent Bit).
- **`LogPulse - Tools Usage Guide.pdf`**: Practical guide covering WinSCP SFTP transfers, PuTTY SSH key authentication, secret file permission hardening (`chmod 600`), and Snowflake integration.
- **`LogPulse - PowerBI and DAX Guide.pdf`**: Business intelligence manual detailing the formulation of 8 custom DAX measures and the visual design of executive reporting dashboards.
- **`LogPulse - List of prompts used.pdf`**: Curated list of all 21 engineering prompts used throughout the AI-augmented software engineering lifecycle.

---

## 3. `LogPulse - Consolidated Documentation` — The Complete Unified Masterpiece

At the root of this folder lies **`LogPulse - Consolidated Documentation`** (available in both `.docx` and `.pdf` formats).

### What It Achieves:
- **All-in-One Master Reference**: Consolidates the **entire set of 5 refined documents into a single, cohesive, publication-grade master document** (~18 MB).
- **Replication Ready**: Engineered specifically so that any evaluator or software engineer can read from beginning to end and completely understand, reproduce, deploy, troubleshoot, and evaluate the LogPulse platform.
- **Complete Visual & Command Inventory**:
  - Contains **110+ high-resolution embedded screenshots and diagrams** (including the Architecture Diagram, GitHub Actions succeeded workflow, 7 Snowflake Snowsight worksheets, and all 32 production demo checkpoints).
  - Contains all exact terminal commands with clear operational explanations.
  - Features immediate live application access links:
    - **React Frontend**: [http://13.61.239.115:3000/dashboard](http://13.61.239.115:3000/dashboard)
    - **Investigation API**: [http://13.61.239.115:8080/api/dashboard/summary](http://13.61.239.115:8080/api/dashboard/summary)
    - **Orders Microservice**: [http://13.61.41.57:80/api/products](http://13.61.41.57:80/api/products)

