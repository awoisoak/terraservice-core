# Core
Core Terraform (TF) module to test a terraservice approach using Terraform Cloud (TFC)
Related repo https://github.com/awoisoak/terraservice-service1


This Core repository handle TF files which expose outputs that will be consumes by other other repos using their own TF files.
The idea is that the repositories with the actual app/service code implementation will hold as well TF files to setup their own infra. 
Those [service repositories](https://github.com/awoisoak/terraservice-service1) will be able to retrieve the generic/common/core infra resources from the outputs of this Core repository.

Workspaces setup in TFC with their respective run triggers:

```mermaid
stateDiagram
    [*] --> terraservice_core_development_core

    terraservice_core_development_core --> terraservice_core_development_network
    terraservice_core_development_core --> terraservice_core_development_storage
   
    [*] --> terraservice_core_development_network
    terraservice_core_development_network --> terraservice_service_1_development
   
    [*] --> terraservice_core_development_storage
    terraservice_core_development_storage --> terraservice_service_1_development
   
    terraservice_service_1_development --> [*]
```


Observations:
- Current modules architecture (core/network/storage) are just an example.

TODO:

- Confirm whether the environemnt IaC files can create several resources from the modules by calling them twice (ex. we need to VPC so we called the network module twice). In that case we would need to set a second output for that vpc so that it could be consumed by other repos.


- rename module core to base to avoid confusion with 'core' repo?


- plan how to manage module versioning
