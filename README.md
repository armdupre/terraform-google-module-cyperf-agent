# module-cyperf-agent/google

## Description
Terraform module for CyPerf agent deployment on Google Cloud Platform

## Deployment
This module creates a single instance having two network interfaces.

## Usage
```tf
module "Agent" {
	source  = "armdupre/module-cyperf-agemt/google"
	AppEth0IpAddress = module.App.Instance.network_ip
	Eth0SubnetName = module.Vpc.PublicSubnet.name
	Eth0VpcNetworkName = module.Vpc.PublicVpcNetwork.name
	Eth1SubnetName = module.Vpc.PrivateSubnet.name
	Eth1VpcNetworkName = module.Vpc.PrivateVpcNetwork.name
}
```