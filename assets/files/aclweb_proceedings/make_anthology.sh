# Input: acronyms_list.txt
#  Each line msut be in this format: ${acronym} ${volume_id} ${volume_no}
#  Each well-formed line calls: anthologize.pl <cdrom> <outdir> <volume id> <volume no>
#
# <cdrom>: e.g., "data/naacl-hlt2018-longpapers/proceedings" This is the folder containing the unzipped contents of "proceedings.tar.gz"
#
# <outdir>: "anthology". The script will output data to this directory
#
# <volume id>: e.g., "N18". N=NAACL proceedings, W=Workshops, S=Semeval etc. + the year in 2 digits (to be used to match "http://www.aclweb.org/anthology/N/N18/", "http://www.aclweb.org/anthology/W/W18/", http://www.aclweb.org/anthology/S/S18/)
#
# <volume no>: e.g., "1". Number from the bibtex url. Typically, 1=long papers, 2=short papers, 3=industry, 4=srw, 5=demo, 6=tutorials. The workshops follow the final numbers of the bibtex url n, e.g., 05, 06, ...

acronyms_list=$1

while read line; do
  # check that all three values exist
  acronym=$(echo $line | awk -F' ' '{print $1}') 
  if [ "$acronym" == '' ]; then
    echo "Missing acronym"
  else
    volume_id=$(echo $line | awk -F' ' '{print $2}') 
    if [ "$volume_id" == '' ]; then
      "Missing volume id for $acronym"
    else
      volume_no=$(echo $line | awk -F' ' '{print $3}')
      if [ "$volume_no" == '' ]; then
        echo "Missing volume id for $acronym"
      else
	# if exactly 3 arguments, process this entry
        perl ./../create_book/bin/anthologize.pl data/${acronym}/proceedings anthology ${volume_id} ${volume_no}
      fi
    fi
  fi
done <${acronyms_list}
