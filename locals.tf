locals {
	AppEth0IpAddress = var.AppEth0IpAddress
	CustomImageProjectId = var.CustomImageProjectId
	CustomImageFamilyName = var.CustomImageFamilyName
	Eth0PrivateIpAddress = var.Eth0PrivateIpAddress
	Eth0PublicIpAddressName = "${local.Preamble}-eth0-ip-addr"
	Eth0SubnetName = var.Eth0SubnetName
	Eth0VpcNetworkName = var.Eth0VpcNetworkName
	Eth1PrivateIpAddress = var.Eth1PrivateIpAddress
	Eth1PrivateIpAliases = var.Eth1PrivateIpAliases
	Eth1SubnetName = var.Eth1SubnetName
	Eth1VpcNetworkName = var.Eth1VpcNetworkName
	InstanceId = var.InstanceId
	InstanceName = "${local.Preamble}-instance"
	MachineType = var.MachineType
	NetworkTargetTags = var.NetworkTargetTags
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	RegionName = var.RegionName
	SerialPortEnable = true
	Tag = var.Tag
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	ZoneName = var.ZoneName
	Version = var.Version
}

locals {
	init_cli = <<-EOF
#!/bin/bash -xe
cyperfagent controller set ${local.AppEth0IpAddress}
    EOF
}