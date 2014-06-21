# git clone and cd 
gitcd () { 
    git clone $1 && cd $(basename ${1%.git})
}

# Latest node and npm version.
alias nl=curl -s http://nodejs.org/dist/npm-versions.txt | tail -n 1 

#Clone all repos of an org from github.
curl -s https://api.github.com/orgs/$1/repos | jq .[].git_url | tr -d '"' | xargs -L 1 git clone