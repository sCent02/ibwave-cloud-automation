import boto3

def lambda_handler(event, context):
    ec2 = boto3.client("ec2", region_name="ap-southeast-1")
    instance_id = "i-xxxxxxxxxxxxx"
    
    response = ec2.stop_instances(InstanceIds=[instance_id])
    return {"status": "stopping", "details": response}