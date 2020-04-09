# Node Version

A GitHub Action to generate a new version of a NodeJS Package using semantic-release.

This actions is intended to be used with the semantic-release plugin for NodeJs Packages.


# Getting started
Uses the defined release method and dependencies in `package.json`. 

This action will perform the following;
- `npm install`  
Install all dependencies in the cloned repository.
- `yarn release`  
Will use the defined release method, if semantic-release is being used, it will tag the release in GitHub with the changelog.

## Output
Output is saved to a file in the working directory, called `release_log` 


## Template
```
name: Version NodeJS Package
   
on:
 push:
   branches:
     - master
   
   steps:
    - name: Generate new version
      uses: eonx-com/actions-node-version@v1.0
      with:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```