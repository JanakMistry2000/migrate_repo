
echo "Enter URL of new Repository: "

read url

git remote add upstream $url

for BRANCH in `git branch --list|sed 's/\*//g'`;
  do 
    echo "Pushing $BRANCH to remote"
    git checkout $BRANCH
    git push -f upstream $BRANCH
  done

git push –tags upstream