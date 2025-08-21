<img width="1121" height="623" alt="lakeFSArchitecture" src="https://github.com/user-attachments/assets/a2832069-0729-4767-8ebf-9f3ec15b9c92" />



## LakeFS | Kubernetes ☸️
lakeFS is an open-source tool that transforms your object storage into a Git-like repository. It enables you to manage your data lake the way you manage your code.
lakeFS supports AWS S3, Azure Blob Storage, and Google Cloud Storage as its underlying storage service. It is API compatible with S3 and works seamlessly with all modern data frameworks such as Spark, Hive, AWS Athena, DuckDB, and Presto.

#### 🎯 Key Features:

- **⚡ Git-like Version Control for Data**: Create repositories for datasets.
- **🔌 Branching & Isolated Environments**: Create branches to test new ETL/ML pipelines or transformations safely.
- **🔍 Atomic Commitsh**: Commit multiple data changes as a single atomic operation.
- **🤖 Data Lineage & Reproducibility**: Every commit is a snapshot of your data.
- **📈 Zero-Copy Branching & Metadata Management**: Branches and commits are lightweight (metadata-only).
- **💰 Safe Merges & Rollbacks**: Merge tested changes from dev → staging → prod.
- **💰 Integrations with Data & ML Ecosystem**:
- **💰 Access Control & Governance**: Supports branch-level policies with [Open Policy Agent (OPA)].Fine-grained permissions for reads, writes, merges.Audit logs for compliance and governance.
- **💰 Data CI/CD**: Automate testing and validation of data pipelines:
- **💰 Web UI & CLI**: User-friendly UI to browse repositories, branches, commits, diffs.


🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```





