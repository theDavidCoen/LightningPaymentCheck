#!/bin/bash

# Prompt the user to enter the Lightning Preimage
read -p "Step 1. Enter the Preimage: " preimage

# Execute the command using the entered Preimage and add the text "Payment Hash:" before the result
echo -n "Payment Hash: "
echo "$preimage" | xxd -r -p | sha256sum

# Step 2: Prompt the user to enter the Lightning Invoice (Payment Request)
read -p "Step 2. Enter the Lightning Invoice (Payment Request): " invoice

# Generate the link to the lightningdecoder.com website
decoder_link="https://lightningdecoder.com/"

# Step 3: Ask the user to verify the payment hash
echo "Step 3. Please check if the payment hash in this link corresponds to the one you got in step 1:"
echo "$decoder_link$invoice"

# Step 4: Get user confirmation and provide feedback
read -p "Does the Payment Hash match? (yes/no): " confirmation

if [[ "$confirmation" == "yes" ]]; then
    echo "Payment confirmed."
else
    echo "Payment NOT confirmed. The payment hash might correspond to a different payment or the transaction has never been sent."
fi
