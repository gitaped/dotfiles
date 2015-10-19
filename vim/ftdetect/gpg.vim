 " To create new file securely do: vim new.file.txt.gpg
 " Your private key used to decrypt the text before viewing should
 " " be protected by a passphrase. Alternatively one could use
 " " a passphrase directly with symmetric encryption in the gpg commands below.
 " au BufNewFile,BufReadPre *.gpg :set secure viminfo= noswapfile nobackup
 " nowritebackup history=0 binary
 " au BufReadPost *.gpg :%!gpg -d 2>/dev/null
 " au BufWritePre *.gpg :%!gpg -e -r 'P@draigBrady.com' 2>/dev/null
 " au BufWritePost *.gpg u

