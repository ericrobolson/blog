BLOG_GEN=".blog_gen"
BLOG="blog/"
BLOG_WEBSITE="html/"

BLOG_GEN_URL=https://github.com/ericrobolson/blog_gen

# Clone + update blog_gen
[ ! -d "${BLOG_GEN}" ] && git clone $BLOG_GEN_URL "${BLOG_GEN}";
cd $BLOG_GEN;
git fetch;
git pull;

# Execute
cargo run ../$BLOG $BLOG_WEBSITE;
