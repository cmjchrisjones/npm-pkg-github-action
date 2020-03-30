# Github Action to run pkg to make executables from your node project

## Why

I recently discovered that there is an npm package to control devices that are normally controlled via the magic home app, I had a play and ended up creating [this repo](https://github.com/cmjchrisjones/desk-lights).

However, I didn't want people who use this to have to download and compile the source themselves, so thought it would be a good foray into the world of GitHub actions to automate this, so here we are!

## Usage

> ** _NOTE:_ This is still in its infancy, and am still looking at how we can publish the actual outputted assets from the action**

Below is an example workflow which will run the npm pkg command

```yaml
on:
  push:
    branches: 
      - master
      - workflow

name: Package Extension
jobs: 
  package:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@v2
      - run: npm install
      - uses: cmjchrisjones/npm-pkg-github-action@master
        with:
          args: "pkg --out-path exes package.json" 
```
