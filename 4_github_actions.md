### #4 - Github Actions

### Resources
- https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions
- Tutorial - https://www.youtube.com/watch?v=R8_veQiYBjI
- Github Action Market place for re-useable modules: https://github.com/marketplace?type=actions

### Steps
Using the concepts learned in the tutorial

1. Create a workflow that on the `push` to `main` branch event, it will:
   - build the image
   - Push the  hello-world image to your DockerHub registry

2. Create a workflow that on the `push` to `main` branch event, it will:
   - build the image
   - Push the hello-world image to your Azure ACR

3. Create a workflow that on the `pull_request` event, it will run `terraform fmt` on the `terraform folder` only
   - There exists a terraform module in the GitHub action marketplace that could be useful here

4. Create a workflow every Friday at 4 pm that will run a `terraform destroy` and tear down all resources for cost-savings
