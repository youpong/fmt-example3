#!/bin/bash

archive_url="https://github.com/fmtlib/fmt/releases/download/9.1.0/fmt-9.1.0.zip"
filename="${archive_url##*/}"
src="${filename%.zip}"

if [[ ! -d $src ]]; then
    echo "downloading from $archive_url"
    curl -sSLO "$archive_url"
    echo "extracting from $filename"
    unzip -q "$filename"
fi

echo "done!"
