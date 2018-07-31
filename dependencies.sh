#!/bin/bash

echo "Update system..."
apt update && apt upgrade

echo "Installing tools..."
apt install -y \
    git \
    zsh \
    vim

