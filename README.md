# distrofund.aleo

## Info
DistroFund is a Decentralized application that allows a user to send a token or native coins to multiple addresses in a single transaction. 
A program that gives us the ability with a combination of a client to execute a batch of private transfer functionality.

## Related Repositories and Docs
Open Source Frontend Repository that is acting as a client to DistroFund program - <a href= "https://github.com/weichain/aleo-client " target="_blank"> Client App </a> <br>
DistroFund detailed docs - <a href="https://teoorg.gitbook.io/distrofund/" target="_blank"> Docs </a> <br>
DistroFund demo - <a href="https://drive.google.com/file/d/1sz_EdLL2I8F7wERYCP6Q7UaxNA-FCwUw/view?usp=sharing" target="_blank"> Video link</a> <br>

## Diagram
![Screenshot](diagram.png)

## Build Guide

To compile this Aleo program, run:
```bash
leo build
```
This will generate your aleo instruction which you will use in the Deployment guide below.

To execute this Aleo program, run:
```bash
leo run <transition_name>
```
Note: In current version imports are still experimental feature and running locally would not work.

## Deploy guide

Currently for deploying a program that includes imports the only successful approach that I found is by deploying manually. Copy the main.aleo instructions that were generated in build/ folder from running `leo build` command and deploy it using -> https://aleo.tools/develop 
