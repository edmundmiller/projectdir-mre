#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process HELLO {
    script:
    """
    python3 ${projectDir}/script.py
    """
}

workflow {
    HELLO ()
}
