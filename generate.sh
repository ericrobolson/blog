START=$PWD

BLOG_GEN="${PWD}/.blog_gen"
BLOG="${PWD}/blog/"
BLOG_WEBSITE="${PWD}/html/"

BLOG_GEN_URL=https://github.com/ericrobolson/blog_gen

# Clone + update blog_gen
[ ! -d "${BLOG_GEN}" ] && git clone $BLOG_GEN_URL "${BLOG_GEN}";
cd $BLOG_GEN;
git fetch;
git pull;

# Execute
cargo run $BLOG $BLOG_WEBSITE;