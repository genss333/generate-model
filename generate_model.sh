#!/bin/bash

# ตรวจสอบจำนวน arguments
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <json_file> <dart_file>"
  exit 1
fi

# รับ argument จาก command line
JSON_FILE=$1
DART_FILE=$2

# Variables
OUTPUT_JSON="$JSON_FILE"
OUTPUT_DART="$DART_FILE"

if [ $? -ne 0 ]; then
  echo "Failed to fetch data from the API"
  exit 1
fi

echo "JSON response saved to $OUTPUT_JSON"

# สร้าง Dart model จาก quicktype
quicktype -o "$OUTPUT_DART" -l dart --final-props --all-properties-optional "$OUTPUT_JSON"

if [ $? -ne 0 ]; then
  echo "Failed to generate Dart model"
  exit 1
fi

echo "Dart model generated at $OUTPUT_DART"
