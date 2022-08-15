#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process HELLO {
    container 'python'
    script:
    """
    python3 ${projectDir}/script.py
    """
}

workflow {
    HELLO ()
}
