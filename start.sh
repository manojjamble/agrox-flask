#!/bin/bash

# Create Conda environment (only if it doesn't exist)
if ! conda env list | grep -q "harvestify"; then
    echo "Creating Conda environment 'harvestify'..."
    conda create -n harvestify python=3.6.12 -y
fi

# Activate the Conda environment
echo "Activating Conda environment 'harvestify'..."
source activate harvestify  # For Linux/macOS
# conda activate harvestify  # Uncomment this if running in an interactive shell

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

echo "Setup complete!"
