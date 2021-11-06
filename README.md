# github-action-terraform-cloud
Interact with the [Terraform Cloud](https://www.terraform.io/cloud) [API](https://www.terraform.io/docs/cloud/api/index.html) from [GitHub Actions](https://docs.github.com/en/actions).

**This action is [free to use](LICENSE) but unsupported! We will not be addressing reported issues.**

## Usage

### Inputs

| Name | Type | Description |
|------|------|-------------|
| `terraform-cloud-api-token` | string | User, team, or organization API token to Terraform Cloud |
| `method` | string | HTTP method to use in the request (default: `GET`) |
| `path` | string | Terraform API path to request (leading slash required), like `/organizations` |
| `body` | string | Request body (doesn't apply to all HTTP methods) |
| `jq` | string | A [jq](https://stedolan.github.io/jq/) program to execute over the API's JSON response (default: `.`, meaning the response is returned verbatim) |

### Outputs

| Name | Type | Description |
|------|------|-------------|
| `json` | string | The JSON output of running the `jq` input program against the Terraform API response (use `fromJSON()` in GitHub Actions to parse) |

## License

Released under the [MIT license](LICENSE).
