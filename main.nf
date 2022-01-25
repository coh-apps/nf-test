#!/usr/bin/env nextflow

data_strs = Channel.from '1111', '2222', '3333', '4444'
params.in = "$baseDir/main.nf"

process sayWow {
  echo true
  input: 
    val x from data_strs
    path 'input.txt' from params.in
  script:
    """
    echo '$x wow!'
    head 'input.txt'
    """
}

