{
  "app": "settings",
  "id": "fc18034b-7884-4529-8496-d6e58ef75a3a",
  "split_id": "ea655822-f49f-4358-86a0-e051c2abf10b",
  "get_names_id": "8a3cbf2b-7cd5-4110-8ca2-e2c872b5ca1e",
  "name": "parent with children",
  "controls": [
    {
      "caption": "Rand-seed",
      "name": "randSeed",
      "value_type": "String",
      "edition_type": "value",
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
      "name": "someDouble",
      "value_type": "double",
      "edition_type": "value",
      "default": 10.1
    },
    {
      "caption": "Some child",
      "name": "subSettings",
      "value_type": "settings",
      "edition_type": "value",
      "multiline": true,
      "edition_rows": 20,
      "default": {
        "myValue": 102
      }
    }
  ]
}