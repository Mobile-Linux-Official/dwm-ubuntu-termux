# dwm-ubuntu-termux
Cara install dwm di Ubuntu termux 

<h1>command instalasi</h1>
<p>Pertama kita ketikan command</p>
<div class=highlight><pre style=color:#f8f8f2;background-color:#272822><code class=language-sh data-lang=sh><span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>apt update -y
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>apt install sudo wget
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>adduser (nama-user)
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>echo "nama-user   ALL=(ALL:ALL) ALL" >> /etc/sudoers
</code></pre></div>

<p>add user dan password kalian</p>

<div class=highlight><pre style=color:#f8f8f2;background-color:#272822><code class=language-sh data-lang=sh><span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>sudo apt update -y && sudo apt upgrade -y
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>sudo apt install git wget
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>git clone https://github.com/Mobile-Linux-Official/dwm-ubuntu-termux.git
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>cd dwm-ubuntu-termux 
<span style="margin-right:.4em;padding:0 .4em;color:#7f7f7f"></span>bash install.sh
</code></pre></div>
