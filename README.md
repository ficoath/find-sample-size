# Ghouls in Urn

An urn contains an unknown number of ghouls. However, it is known that half of the ghouls are white, and half of the ghouls are black. Three random ghouls are drawn from the urn without replacement to make a potion so strong it will turn a person into a chicken.

Your challenge: given an input which is the probability of all 3 ghouls being white, write a function to calculate the number of ghouls in the urn.

## Installation/Requirements

- clisp

This can be installed using brew

```
brew install clisp
```

## Example

You can run using the go.sh or with the clisp command.

Using go.sh
```
./go.sh 0.05
6
./go.sh 0.07
"Probability entered would results in partial ghouls"
./go.sh 666
"Probability in must be in range [0.05 0.125)"
```

Using clisp
```
clisp find-sample-size.lisp 0.05
6
clisp find-sample-size.lisp 0.07
"Probability entered would results in partial ghouls"
clisp find-sample-size.lisp 666
"Probability in must be in range [0.05 0.125)"
```

