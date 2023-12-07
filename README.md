# git-releaser-action

Runs [git-releaser](https://github.com/git-releaser/git-releaser) to create a release on GitHub.

## Usage

```yaml
- uses: git-releaser/git-releaser-action@v1
  with:
    token: ${{ secrets.GITHUB_TOKEN }}
```

An example workflow can be found [here](./.github/workflows/release.yaml).

If you want to run a workflow on a release, you have to use a different token with the following Repo permissions:
* Contents: Read, Write
* Metadata: Read-only
* Pull requests: Read, Write


## Contributing
Please read our [contributing guide](./CONTRIBUTING.md).