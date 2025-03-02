{
  "app": "main-settings",
  "_category": "settings",
  "id": "715df744-2be7-4ee7-b234-3de17d4a976d",
  "controls": [
    {
      "name": "important_param1",
      "value_type": "String",
      "edition_type": "value",
      "default": "3.0 from A"
    },
    {
      "name": "important_param2",
      "value_type": "String",
      "edition_type": "value",
      "default": "parame2 from A"
    },
    {
      "name": "param1_of_A",
      "value_type": "String",
      "edition_type": "value",
      "default": "DEFAULT PARAM 1 IN A"
    },
    {
      "name": "param2_of_A",
      "value_type": "String",
      "edition_type": "value",
      "default": "DEFAULT PARAM 2 IN A"
    },
    {
      "name": "settings_b",
      "_rem": "(This name MUST be equal to the name of the main settings of the chain B.)",
      "value_class_name": "settings.class.b",
      "value_type": "settings",
      "edition_type": "value",
      "advanced": true,
      "multiline": true
    }
  ]
}


