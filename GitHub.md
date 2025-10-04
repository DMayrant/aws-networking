# Uploading your terraform project to GitHub

1. Create your repository on github 
2. copy HTTPS clone into your MacOs terminal 

commands for terminal: 
1. git clone https://github.com/DMayrant/terraform-aws-networking-tf.git
2. cd terraform-aws-networking-tf (this is your repository name)
3. open -a Visual\ Studio\ code .

# VS Code clone
1. copy all the files in your selected directory using (holding the command button while clicking on the file)

2. copy files to the VS Code clone 

commands to run within VS Code clone: 
1. git status = see what files changed 
2. git add .
3. git commit -m "feat(networking-tf
-course): add files" 

4. git push 
5. git tag "v0.1.0"
6. git push --tags

# Create a repository on CLI. Queing everything up before pushing to your GitHub

echo "# 9.23.25_class7" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://<github-respository>
git remote -v 
git push -u origin main

