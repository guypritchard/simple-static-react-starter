# Simple-ish React Typescript Starter

Based very heavily on https://github.com/mitsuruog/dead-simple-react-typescript-starter with a few changes for me.

## Installing / Getting started

Just run:

```shell
npm start 
```

Open up http://localhost:9000 to browse the simple starter code.

Similarly 
```shell
npm run build
```

To build a static site with minified code.

## Usage

When using it as a scaffold, shallow clone only the latest history.

```
git clone --depth 1 https://github.com/guypritchard/simple-static-react-starter.git
```

## Azure Deployment

The terraform directory contains the bare minimum for hosting the React static site in Azure.

Change the ./terraform/variables.tf values to specify unique values (location, project & instance) for the project.

Authenticate with your Azure account using the Azure CLI: 
```
az login
```

To see the proposed environmental changes.
```
terraform plan 
```

To perform the deployment you'll need to do a production build and terraform:

```
npm run build
terraform apply
```

## Licensing

MIT
