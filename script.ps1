Get-ChildItem *.docx | ForEach-Object {
    $base = $_.BaseName

    pandoc $_.FullName `
        -f docx `
        -t gfm `
        --wrap=none `
        --extract-media="docs/images/$base" `
        -o "docs/$base.md"
}
