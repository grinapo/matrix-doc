{
  "type": "object",
  "title": "Tag Event",
  "description": "Informs the client of tags on a room.",
  "allOf": [{
    "$ref": "core-event-schema/event.yaml"
  }],
  "properties": {
    "type": {
      "type": "string",
      "enum": ["m.tag"]
    },
    "content": {
      "type": "object",
      "properties": {
        "tags": {
          "type": "object",
          "description": "The tags on the room and their contents.",
          "additionalProperties": {
            "title": "Tag",
            "type": "object",
            "properties": {
              "order": {
                "type": "number",
                "format": "float",
                "description":
                  "A number in a range ``[0,1]`` describing a relative position of the room under the given tag."
              }
            }
          }
        }
      }
    }
  },
  "required": ["type", "content"]
}
