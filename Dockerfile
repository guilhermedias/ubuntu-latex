FROM ubuntu:23.04

# Update repositories
RUN apt update

# Upgrade packages
RUN apt upgrade

# Install the TeX Live distribution
RUN apt install --yes texlive-full

# Set up the project directory
VOLUME /home/latex-project

WORKDIR /home/latex-project

# Run the entrypoint command
ENTRYPOINT latexmk -outdir=build/out -auxdir=build/aux -pdf 1>/dev/null 2>&1

