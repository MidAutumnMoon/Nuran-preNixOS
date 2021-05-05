function ytb --description 'youtube-dl with using aria2c as downlaoder'
youtube-dl --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' $argv
end
