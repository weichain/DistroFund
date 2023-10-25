# distrofund.aleo

## Build Guide

To compile this Aleo program, run:
```bash
leo build
```

To execute this Aleo program, run:
```bash
leo run <transition_name>
```
Note: In current version imports are still experimental feature and running locally would not work.

## Deploy guide

Currently for deploying a program that includes imports the only successful approach that I found is by deploying manually. Copy the main.aleo instructions that were generated in build/ folder from running `leo build` command and deploy it using -> https://aleo.tools/develop 