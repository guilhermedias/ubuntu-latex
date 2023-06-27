# Ubuntu LaTeX

An Ubuntu image with a full TeX Live installation.

# Usage

```
docker run --user="$(id -u):$(id -g)" --volume "$(pwd)":/home/latex-project --rm ubuntu-latex:0.0.1
```

