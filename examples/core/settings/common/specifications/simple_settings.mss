{
  "app": "main-settings",
  "name": "Some model",
  "id": "9eb7f278-20dc-4d05-abdb-1c2a7b2fd767",
  "split_id": "df196eaa-9f39-41e6-8a2a-06135525ab85",
  "description": "Simple settings",
  "controls": [
    {
      "caption": "Rand-seed",
      "name": "randSeed",
      "value_type": "String",
      "edition_type": "value",
      "default": ""
    },
    {
      "caption": "Some kind",
      "name": "kind",
      "value_type": "String",
      "edition_type": "enum",
      "items_file": "simple_enum.txt",
      "default": "BETA"
    },
    {
      "caption": "File 1",
      "name": "file1",
      "value_type": "String",
      "edition_type": "file",
      "default": ""
    },
    {
      "caption": "Folder 2",
      "name": "folder2",
      "value_type": "String",
      "edition_type": "folder",
      "default": ""
    },
    {
      "caption": "Number of packed objects",
      "name": "numberOfObjects",
      "value_type": "int",
      "edition_type": "value",
      "default": 10
    },
    {
      "caption": "Random rotation",
      "name": "randomRotation",
      "value_type": "boolean",
      "edition_type": "value",
      "default": false
    },
    {
      "caption": "How to choose 1st position",
      "name": "firstPositionStrategy",
      "value_type": "String",
      "edition_type": "enum",
      "items": [
        {
          "value": "LAST",
          "caption": "First touching"
        },
        {
          "value": "DEEPEST",
          "caption": "Deepest"
        },
        {
          "value": "RANDOM",
          "caption": "Random"
        }
      ],
      "default": "LAST"
    },
    {
      "caption": "Some settings JSON",
      "name": "someText",
      "value_type": "settings",
      "edition_type": "value",
      "multiline": true,
      "edition_rows": 3,
      "default": {}
    }
  ]
}