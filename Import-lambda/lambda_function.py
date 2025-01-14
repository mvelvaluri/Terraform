Import json
Import boto3

Def lambda_handler(event, context):
	Client = boto3.client('ec2')
	Response = client.run_instances(
		ImageID = "ami-01816d07b1128cd2d"
		InstanceType = 't2.micro'
		KeyName = 'Ec2DevOps'
		MaxCount = 1
		MinCount = 1
)