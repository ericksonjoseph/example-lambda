ROOT := $(shell pwd)/

# Passed the arguments file to terraform
LAMBDA_NAME := "example-lambda-erick"
LOG := './test-event.log'
PACKAGE := 'lambda.zip'
IAM_ROLE := 'arn:aws:iam::992166796122:role/CloudLambdaExecute'

.IGNORE: clean

# -------------------------------------------------------------------------------
# http://docs.aws.amazon.com/cli/latest/reference/lambda/index.html#cli-aws-lambda
# -------------------------------------------------------------------------------

# TARGET:package 					Prepares the lambda for deployment
package: build

# TARGET:create 					Creates a new lambda function
create:
	aws lambda create-function \
		--region us-west-2 \
		--function-name $(LAMBDA_NAME)  \
		--zip-file fileb://$(PACKAGE) \
		--role $(IAM_ROLE) \
		--handler src/index.handler \
		--runtime nodejs6.10


# TARGET:invoke 					Trigger the lambda
# invocation-type: RequestResponse (default) || Event
invoke:
	aws lambda invoke \
		--invocation-type RequestResponse \
		--function-name $(LAMBDA_NAME) \
		--payload file://$(ROOT)/payload.json \
		$(LOG)

# TARGET:update 					Update the lambda code
update:
	aws lambda update-function-code \
		--function-name $(LAMBDA_NAME)  \
		--zip-file fileb://$(PACKAGE)

# TARGET:delete 					Delete the lambda code
delete:
	aws lambda delete-function \
		--function-name $(LAMBDA_NAME)
# ------------------------------ UTILS ------------------------------
build: clean deps zip

clean:
	cd $(ROOT) \
		&& rm *.zip; \

deps:
	cd $(ROOT) \
		&& rm -r $(ROOT)node_modules; \
		npm install

zip:
	cd $(ROOT) && \
		zip -r lambda.zip src/* node_modules > /dev/null

help:
	# Usage:
	#   make <target> [OPTION=value]
	#
	# Targets:
	@egrep "^# TARGET:" [Mm]akefile | sed 's/^# TARGET:/#   /'
