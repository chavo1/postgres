resource "aws_rds_cluster_instance" "cluster_instances" {
count = 1
identifier = "aurora-cluster-demo-${count.index}"
cluster_identifier = aws_rds_cluster.default.id
instance_class = "db.r4.large"
engine = "aurora-postgresql"
engine_version = "9.6.12"
}
resource "aws_rds_cluster" "default" {
cluster_identifier = "aurora-cluster-demo"
availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
database_name = "mydb"
master_username = "foo"
master_password = "barbut8chars"
engine = "aurora-postgresql"
engine_version = "9.6.12"
}
