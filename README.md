# jacoco-merge docker action
Github action for merging two or more execution data files.

This action merge two or more execution data files from [JaCoCo](https://www.jacoco.org/jacoco/trunk/index.html) workflow into a single one.
This action uses *merge* command from  [JaCoCo CLI](https://www.jacoco.org/jacoco/trunk/doc/cli.html). 

## Inputs

### `file-set`

**Required** List of JaCoCo `*.exec` files to read. Default `"target/jacoco.exec"`.

## Outputs

### `dest-file`

file to write merged execution data to. Default `"target/jacoco.exec"`.

## Example usage

```yaml
uses: poloHex/jacoco-exec-merge@v1
with:
  exec-file: > 
    target/mod1/jacoco.exec
    target/mod2/jacoco.exec
  dest-file:
    target/jacoco.exec
```
