OLDIFS=$IFS
IFS="|"

rm -rf ../trans_**.*;
while read -r in;
 do 
    aws translate translate-text --source-language-code "en" --target-language-code "ar" --text $in --output text  | echo "$(cat)" >> ../trans_ar.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "zh" --text $in --output text  | echo "$(cat)" >> ../trans_zh.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "cs" --text $in --output text  | echo "$(cat)" >> ../trans_cs.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "fr" --text $in --output text  | echo "$(cat)" >> ../trans_fr.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "de" --text $in --output text  | echo "$(cat)" >> ../trans_de.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "it" --text $in --output text  | echo "$(cat)" >> ../trans_it.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "ja" --text $in --output text  | echo "$(cat)" >> ../trans_ja.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "pt" --text $in --output text  | echo "$(cat)" >> ../trans_pt.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "ru" --text $in --output text  | echo "$(cat)" >> ../trans_ru.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "es" --text $in --output text  | echo "$(cat)" >> ../trans_es.csv &
    aws translate translate-text --source-language-code "en" --target-language-code "tr" --text $in --output text  | echo "$(cat)" >> ../trans_tr.csv
 done < "$1"
