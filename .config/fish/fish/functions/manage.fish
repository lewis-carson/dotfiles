function x
    scrot 0x0.png -q 100
    curl -F "file=@0x0.png" https://0x0.st
    rm 0x0.png
end

function upload
    curl -F"file=@$argv[1]" https://0x0.st
end
