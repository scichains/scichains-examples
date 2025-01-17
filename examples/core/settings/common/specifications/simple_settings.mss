{
  "app": "main-settings-combiner",
  "name": "SP-model",
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
      "enum_items_file": "simple_enum.txt",
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
      "caption": "Number of checked positions",
      "name": "numberOfCheckedPositions",
      "value_type": "int",
      "edition_type": "value",
      "default": 1
    },
    {
      "caption": "Random rotation",
      "name": "randomRotation",
      "value_type": "boolean",
      "edition_type": "value",
      "default": false
    },
    {
      "caption": "How to choose 1st touching position",
      "name": "firstPositionStrategy",
      "description": "\"First touching\": new object \"falls\" along the random straight from infinity and touches to the first encountered sphere-polyhedron.\n\"Deepest\": new \"falling\" object ignores encountered sphere-polyhedra and moves along the straight to the deepest available position (for example, into the deepest pore intersecting this straight).\n\"Random\": like \"deepest\", but the object moves to some random from all available positions.",
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
      "caption": "Some large text",
      "name": "someText",
      "value_type": "settings",
      "edition_type": "value",
      "multiline": true,
      "lines": 2,
      "default": ""
    }
]
}