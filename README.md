# snapraid-runner
Automate SnapRAID sync

Debian package to install [snapraid-runner](https://github.com/Chronial/snapraid-runner).

It creates a conjob that runs every day a `sync` at 8am.

The configuration file will be created under `/etc/snapraid-runner.conf`.

## Install

### Precompiled binaries

Precompiled binaries for released versions are available in the 
[*releases* section](https://github.com/adelolmo/snapraid-runner/releases).

### Ubuntu / Debian Repository

snapraid-runner can also be install from my Ubuntu/Debian repository.

```markdown
sudo apt-get install apt-transport-https
```
For ubuntu trusty:
```
wget -O - http://adelolmo.github.io/andoni.delolmo@gmail.com.gpg.key | sudo apt-key add -
echo "deb http://adelolmo.github.io/trusty trusty main" | sudo tee /etc/apt/sources.list.d/adelolmo.list
```
For ubuntu xenial:
```
wget -O - http://adelolmo.github.io/andoni.delolmo@gmail.com.gpg.key | sudo apt-key add -
echo "deb http://adelolmo.github.io/xenial xenial main" | sudo tee /etc/apt/sources.list.d/adelolmo.list
```
For debian jessie:
```
wget -O - http://adelolmo.github.io/andoni.delolmo@gmail.com.gpg.key | sudo apt-key add -
echo "deb http://adelolmo.github.io/jessie jessie main" | sudo tee /etc/apt/sources.list.d/adelolmo.list
```
For debian stretch:
```
wget -O - http://adelolmo.github.io/andoni.delolmo@gmail.com.gpg.key | sudo apt-key add -
echo "deb http://adelolmo.github.io/stretch stretch main" | sudo tee /etc/apt/sources.list.d/adelolmo.list
```