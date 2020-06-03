#!/usr/bin/env cwl-runner

class: ExpressionTool
requirements:
  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: hubmap/example-pipeline-container
cwlVersion: v1.0

inputs:
  file1:
    type: File
    inputBinding: { loadContents: true }

outputs:
  output: int

expression: "$({'output': parseInt(inputs.file1.contents)})"
