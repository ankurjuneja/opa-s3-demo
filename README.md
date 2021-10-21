# opal-demo

This project demonstrates OPA integration with Amazon S3.

Amazon S3 bucket contains `bundle.tar.gz` which contains simple json data.

config.yaml file contains configuration required by OPA server to fetch data from S3 and polling details. When there is a data change, OPA will update its data as well with next poll.

to run:
`./opa run -s policy.rego -c config.yaml`

the above command is passing the policy during initialization and OPA will fetch data from S3 after intialization

demo query:
http://localhost:8181/v1/data/system/main/allow

post input:
{
"input" : {"identity":"bob","target":"localhost:8787"}
}

