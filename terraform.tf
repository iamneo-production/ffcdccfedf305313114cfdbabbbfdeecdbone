terraform {
    required_providers{
        aws={
            source="hashicorp/aws"
            version="~>4.0"
        }
    }
}
provider {
    region="ap-southeast-1"
    access_key="AKIA5PND2T2M5NZYGVET
"
    secret_key="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
"
}
resource "aws_instance" "aws"{
    ami="ami-072f48a9ed4f1bbda"
    instance_type="t2.micro"
} 
output "public_ip"{
    value=aws_instance.aws.public_ip
}