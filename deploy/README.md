# AWS deploy script

Simple script example for rolling upgrade of existing EC2 instances from old to new AMI

# Deploy

Usage:
`./deploy <OLD_AMI_ID> <NEW_AMI_ID>`

Example:

Ubuntu 16.04 -> 18.04
`./deploy ami-03746875d916becc0 ami-01e6a0b85de033c99`

Ubuntu 18.04 -> 16.04
`./deploy ami-01e6a0b85de033c99 ami-03746875d916becc0`

# Tests

Deploy script can be testes with `test` script.
It performs rolling upgrade from Ubuntu 16.04 AMI
to 18.04 and back, checking if all instances are moved correctly.
