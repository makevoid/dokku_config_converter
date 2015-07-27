# Dokku Config Converter

### Prepare

Put your configs in a `configs.txt` file in the main dir

### Run

    rake


so from a configs.txt like this:

```
A: B
C: D
```

the config will become in the form of:

```
A=B C=D
```

so you can easily do:

```sh
dokku config:set app-name A=B C=D
```
