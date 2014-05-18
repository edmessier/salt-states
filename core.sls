gnome:
  pkg.installed:
    - pkgs:
      - gnome-shell
      - ubuntu-gnome-desktop
    - require:
      - debconf: gdm
  pkgrepo.managed:
    - ppa: gnome3-team/gnome3
    - require_in:
      - pkg: gnome

gdm:
  debconf.set:
    - name: gdm
    - data:
        'shared/default-x-display-manager': {'type': 'string', 'value': 'gdm'}

hal:
  pkg.installed:
    - name: hal
  pkgrepo.managed:
    - ppa: mjblenner/ppa-hal
    - require_in:
      - pkg: hal

flash:
  pkg.installed:
    - name: flashplugin-installer

chrome:
  pkg.installed:
    - name: google-chrome-stable

chromium:
  pkg.installed:
    - name: chromium-browser
    - require:
      - pkg: flash

chrome_ppa:
  pkgrepo.managed:
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - file: /etc/apt/sources.list.d/google-chrome.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub
    - require_in:
      - pkg: chrome

gorilla:
  pkg.installed:
    - name: password-gorilla

dolphin:
  pkg.installed:
    - name: dolphin

vlc:
  pkg.installed:
    - name: vlc
