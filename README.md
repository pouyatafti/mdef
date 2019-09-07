# mdef

`mdef` is a simple command-line dictionary lookup tool for macOS à la `dict`.  It uses the system dictionaries.

## usage

```
mdef <term>
```

Use quotations if your term includes spaces.

## installation

Build with
```
cd mdef
make
```
and then move the executable `mdef` to somewhere in the path.


## return values

0 in case of success, 1 for too few arguments, and 2 if not found in dictionary.

## limitations

Only searches for exact matches.
