package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	root := "modules"

	modules := []string{
		"acr",
		"cloudwatch",
		"codebuild",
		"codecommit",
		"codepipeline",
		"coedeploy",
		"dynamodb",
		"ec2",
		"ecs",
		"eks",
		"lambda",
		"rds",
		"route53",
		"s3",
		"vpc",
	}

	files := []string{
		"main.tf",
		"variables.tf",
		"outputs.tf",
		"README.md",
	}

	for _, module := range modules {

		modulePath := filepath.Join(root, module)

		err := os.MkdirAll(modulePath, os.ModePerm)
		if err != nil {
			fmt.Printf("Error creating module directory %s: %v\n", module, err)
			continue
		}

		for _, file := range files {

			filePath := filepath.Join(modulePath, file)

			if _, err := os.Stat(filePath); os.IsNotExist(err) {

				f, err := os.Create(filePath)
				if err != nil {
					fmt.Printf("Error creating file %s: %v\n", filePath, err)
					continue
				}

				defer f.Close()

				fmt.Printf("Created: %s\n", filePath)
			}
		}
	}

	fmt.Println("\nTerraform module structure generated successfully.")
}