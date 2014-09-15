This is a slightly opinionated codebox Dockerfile.
Yes, I know there are other ones but they are all
built from dockerfile/nodejs and they are bloated.
This one installs from packages and cleans up the
apt and npm caches to keep the fs layers as small
as possible.
