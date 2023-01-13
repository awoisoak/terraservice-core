# core
Core tf module to test terraservice approach using TFC
Related repo https://github.com/awoisoak/service1


This repository handle the IaC files that are core of the projects.
The idea is that other repositories that hold the app/service code will hold their specific IaC files but will retrieve a more generic/common/core infra resources from the outputs of this repository.

//TODO current modules architecture is just an example. Think about an architecture that might make more sense
//TODO plan how to manage module versioning
//TODO probably only the tf project that consumes tfe_outputs requires to setup the tfe provider and token
//TODO rename repo to 'terraformservice-base' to avoid confusion with 'core' module
//TODO Confirm whether the environemnt IaC files can create several resources from the modules by calling them twice (ex. we need to VPC so we called the network module twice). In that case we would need to set a second output for that vpc so that it could be consumed by other repos.
