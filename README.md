Containerized WP VIP CLI!
-----

```
git clone https://github.com/oc013/wpvipcli-docker.git
cd wpvipcli-docker
./build.sh
mkdir ~/.wpvip
```

Edit `~/.bashrc` and add the alias

```
alias vip='docker run --rm -ti -v ~/.wpvip/vip-go-cli.json:/root/.config/configstore/vip-go-cli.json vip'
```

Go to https://dashboard.wpvip.com/me/cli/token and retrieve your API token

Run the `vip` command to initialize and you should see the WP VIP cli setup asking for your token:
```
$ vip

  Welcome to
   _    __ ________         ________    ____
  | |  / //  _/ __        / ____/ /   /  _/
  | | / / / // /_/ /______/ /   / /    / /
  | |/ /_/ // ____//_____/ /___/ /____/ /
  |___//___/_/           ____/_____/___/

  VIP CLI is your tool for interacting with and managing your VIP applications.

  To get started, we need an access token for your VIP account. We'll open https://dashboard.wpvip.com/me/cli/token in your web browser; follow the instructions there to continue.

✔ Ready? (y/N) · true
✔ Access Token: ·
```


Future
-----

Publish to docker hub
