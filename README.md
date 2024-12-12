# generate-model
Generate Dart Model Class From Json File

## Setup
There are many ways to use quicktype. app.quicktype.io is the most powerful and complete UI. The web app also works offline and doesn't send your sample data over the Internet, so paste away!

For the best CLI, we recommend installing quicktype globally via npm:

```.sh
npm install -g quicktype
```

Help command line
```.sh
quicktype --help
```

## Installation

[Optional]
```.sh
sudo mv generate_model.sh /usr/local/bin
```

## Usage
```.sh
generate_model.sh <json_file_path> <output_file_path>
```

## Example
```.sh
generate_model.sh lib/data/json/response.json lib/data/models/test.dart
```

