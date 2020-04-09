# Node Version

A GitHub Action to generate a new version of a NodeJS Package using semantic-release, or the defined `release` method.

This action will perform the following;
- `npm install`  
Install all dependencies, based on the package.json file included in the cloned repository.
- `yarn release`  
Will use the defined release method from the `package.json`, and if semantic-release is being used, it will tag the release in GitHub with the changelog.

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