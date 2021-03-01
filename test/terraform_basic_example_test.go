package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformResourceGroupExample(t *testing.T) {
	// Construct the terraform options with default re-tryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		TerraformDir: "../examples/simpleModuleDeployment",
	})

	// Clean up resources with "terraform destroy" at the end of the test.
	defer terraform.Destroy(t, terraformOptions)

	// Run "terraform init" and "terraform apply". Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// Run 'terraform output' to get the values of the output variables and check they match.
	rgName := terraform.Output(t, terraformOptions, "rg_name")
	rgLocation := terraform.Output(t, terraformOptions, "rg_location")
	assert.Equal(t, "rg-dev-testing", rgName)
	assert.Equal(t, "uksouth", rgLocation)
}
