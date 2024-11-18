Pada first meet MP (Week ke-0) kita belajar mengenai pengenalan version control (git) seperti cara membuat repository dan command dasar.
berikut adalah beberapa command yang dipelajari pada week 0:

Git Commands
"git init" inisiasi repository
"git add ." -> nambah file
"git commit --m <nama>"-> bikin perubahan
"git remote add origin <url_repository>" -> connect repository
"git push -u origin main" -> update/upload repository local ke git
"git log" -> cek history perubahan repository
"git status" -> cek branch sekarang
"git checkout -b <nama_branch>" -> bikin branch baru + pindah branch
"git checkout -a" -> list branch yang ada
"git checkout <nama_branch>" -> ngecek branch
"git checkout -m <nama_lama> <nama_baru>" -> rename/ganti nama branch
"git reset --hard <id_commit>" -> reset commit pada github yang telah di update
"git_push" -> push ke branch yang beda
"git_pull" -> update repository github ke lokal

SSH Key
Guna dari ssh adalah agar kita tidak lagi perlu input password setiap kali melakukan push.

cara:
pada bash ketik "ssh-keygen"
pada file explorer cari lokasi penyimpanan file .pub seperti yang tertera pada "Your public key has been saved in /c/Users/username/.ssh/id_rsa.pub"
copy public key yang terdapat pada file dengan ekstensi .pub
