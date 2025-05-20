#!/bin/bash

# Output directory for the namespace manifests
OUTPUT_DIR="./namespace-manifests"

# Number of namespaces to generate
TOTAL_NAMESPACES=4000

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Loop to generate namespaces
for i in $(seq 1 $TOTAL_NAMESPACES); do
  # Define the namespace name
  NS_NAME="namespace-$i"

  # Create the namespace manifest YAML content
  cat <<EOF > $OUTPUT_DIR/$NS_NAME.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: $NS_NAME
EOF

  echo "Generated $OUTPUT_DIR/$NS_NAME.yaml"
done

echo "Finished generating $TOTAL_NAMESPACES namespaces in $OUTPUT_DIR"
