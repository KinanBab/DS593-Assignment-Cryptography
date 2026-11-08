module main

go 1.16

replace checklist => ./checklist

// checklist replaces dpf-go with a version that supports ARM (e.g. Apple Silicon).
// Go ignores replace directives in dependencies, so we repeat it here.
replace github.com/dkales/dpf-go => ./checklist/modules/dpf-go

require checklist v0.0.0-00010101000000-000000000000
