#!/usr/bin/env nextflow

data_strs = Channel.from '1111', '2222', '3333', '4444'

process sayWow {
  echo true
  input: 
    val x from data_strs
  script:
    """
    echo '$x wow!'
    """
}

