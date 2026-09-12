# DevOps Workflow Diagram

```mermaid
flowchart LR
    A[Developer] --> B[Git Repository]
    B --> C[GitHub]
    C --> D[Build]
    D --> E[Test]
    E --> F[Deploy]
    F --> G[Monitor]
    G --> B
