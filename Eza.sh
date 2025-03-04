#!/data/data/com.termux/files/usr/bin/bash

# Pastikan figlet terinstal untuk menampilkan logo
if ! command -v figlet &> /dev/null
then
    echo "figlet belum terinstal. Menginstal sekarang..."
    pkg install figlet -y
fi

# Logo Eza
clear
echo ""
echo "+++++++**+-:::::::::::::::::::+####*****+"
echo "+++==++-::::::::::::::::-:::==:####+"
echo "++++==++-::::::::::::::::::::::+-::+#+%##"
echo "+==+:::::::::::::::::::::::-=::::+####"
echo "+++++++::::::::::::::::::::---:==:::::+####**"
echo "##::::::-:::-::::::::-:::::=+::::::+##%##"
echo "##-::=--:::----:::::---::::-=-:::::=%####"
echo "++++++-::=:::---:----::-=-:-::::-=:::::=%##%##"
echo "=##+%##=-:::::----------:---------:-=:::-+###%##"
echo "++%=+-:::::-++==++-:---::=++=+=-:-=::+-+##%##"
echo "+#+++::::::-+:-++:::::::-+**--=:::-===:+%#%##"
echo "+###+::::::--:-=--::::::::=-=:::-:::-==:+%#%##"
echo "==++-::::--::::::::::::::::::-::::-+=-%#%##"
echo "+++==+*+--:---:::::::::::-::::::-::::=+--#%##"
echo "+=+-#++=-:----:::::======:::::--::---+=%#%#"
echo "++++=+++=-:--=--:::::::::::::-=-::-==##%%#+#"
echo "++++===:-=+++-++=---:::::--==+=--=+##*%%##"
echo "++=++++===+==++-=++++===-====+#%#######+###+"
echo "==+++=+=+++=====++=++=====----=++#####+*****#+"
echo "****************************************"
echo ""
figlet "Eza developer"
echo ""

# Support Me
echo "Support Me:"
echo "TikTok: tiktok.com/@ezaa.vip7"
echo "GitHub: https://github.com/Ezaa777"
echo ""

# Pastikan yt-dlp dan ffmpeg sudah terinstal
if ! command -v yt-dlp &> /dev/null
then
    echo "yt-dlp belum terinstal. Menginstal sekarang..."
    pkg update && pkg upgrade -y
    pkg install python -y
    pip install yt-dlp
fi

if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg belum terinstal. Menginstal sekarang..."
    pkg install ffmpeg -y
fi

# Pilih mode download
echo "Pilih opsi download:"
echo "1. Video TikTok"
echo "2. MP3 TikTok"
echo "3. Video YouTube"
echo "4. MP3 YouTube"
echo "5. Video Pinterest"
read -p "Masukkan pilihan (1-5): " choice

# Minta pengguna memasukkan URL
read -p "Masukkan URL: " url

case $choice in
    1)
        # Unduh video TikTok
        yt-dlp "$url" -o "/storage/downloads/%(id)s.%(ext)s"
        echo "Video TikTok telah berhasil diunduh ke folder Downloads."
        ;;
    2)
        # Unduh MP3 TikTok
        yt-dlp -f bestaudio --extract-audio --audio-format mp3 "$url" -o "/storage/downloads/%(title)s.mp3"
        echo "MP3 TikTok telah berhasil diunduh ke folder Downloads."
        ;;
    3)
        # Unduh video YouTube
        yt-dlp "$url" -o "/storage/downloads/%(title)s.%(ext)s"
        echo "Video YouTube telah berhasil diunduh ke folder Downloads."
        ;;
    4)
        # Unduh MP3 YouTube
        yt-dlp -f bestaudio --extract-audio --audio-format mp3 "$url" -o "/storage/downloads/%(title)s.mp3"
        echo "MP3 YouTube telah berhasil diunduh ke folder Downloads."
        ;;
    5)
        # Unduh video Pinterest
        yt-dlp "$url" -o "/storage/downloads/%(title)s.%(ext)s"
        echo "Video Pinterest telah berhasil diunduh ke folder Downloads."
        ;;
    *)
        echo "Pilihan tidak valid. Silakan coba lagi."
        ;;
esac