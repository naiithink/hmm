# -*- coding: utf-8; mode: ruby; -*-

puts "\u{1F649} hello, world"

require 'json'


def prep_exit(exit_code = 0)
    puts "\u{1F648} bye, world"

    if defined?(HMM_FILE)
        HMM_FILE.close
    end

    exit exit_code
end


OS = Gem::Platform.local.os
HMM_FILE_NAME = "toys.hmm.json"


if File.exist?(HMM_FILE_NAME) && !File.zero?(HMM_FILE_NAME)
    HMM_FILE = File.open HMM_FILE_NAME
elsif !File.exist?(HMM_FILE_NAME)
    puts "\u{1F64A} omg, lost toys."
else
    puts "\u{1F64A} hmm, it looks like your toys are broken."
    prep_exit 1
end

prep_exit 0
