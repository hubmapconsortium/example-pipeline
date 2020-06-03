#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  - class: DockerRequirement
    dockerPull: hubmap/example-pipeline-container

inputs:
  file1: File

outputs:
  output:
    type: File
    outputBinding: { glob: output }

baseCommand: [wc, -l]

stdin: $(inputs.file1.path)
stdout: output
