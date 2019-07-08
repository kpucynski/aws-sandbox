# AWS deploy script

## Description

Simple script example for rolling upgrade of existing EC2 instances from old to new AMI

It check instances connected to ELB, takes their metadata and, if they
are started from specified AMI, it sequentially creates "cloned" instances with new AMI,
registers them to ELB and removes old ones.

It uses uderdata script from environment terraform scripts to setup
web server on new instances.

Similar functionality can be acheived with auto scaling group with proper termination policy.

## Rolling upgrade

Usage:

`./deploy <OLD_AMI_ID> <NEW_AMI_ID>`

Example:

Upgrade from Ubuntu 16.04 AMI to 18.04

`./deploy ami-03746875d916becc0 ami-01e6a0b85de033c99`

Downgrade from Ubuntu 18.04 AMI to 16.04

`./deploy ami-01e6a0b85de033c99 ami-03746875d916becc0`

## Script tests

Deploy script can be testes with `test` script.
It performs rolling upgrade as described in examples from Ubuntu 16.04 AMI
to 18.04 and back to 16.04.
It checks ELB connectivity, if all instances are changed correctly,
registered to ELB and old ones removed.
