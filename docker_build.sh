set -xue

docker run --rm   --volume="$PWD:/srv/jekyll"   -it jekyll/jekyll   jekyll build

cd _site/
git init
git add .
git remote add origin git@github.com:dehasi/dehasi.github.io.git
git ci -am "Deploty"
git push --set-upstream origin master --force

cd ..
rm -rf _site 
