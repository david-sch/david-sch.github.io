#!/usr/bin/env bash
# Serve the site locally with a live-reloading preview at http://127.0.0.1:4000
#
# The github-pages gem stack tops out at Ruby 3.x: it pulls in commonmarker,
# whose native extension declares `Ruby >= 2.6, < 4.0`. The system Ruby is 4.x,
# so bundler cannot resolve github-pages there at all. GitHub Pages itself
# builds on Ruby 3.3, so we do the same and keep local output faithful.
#
# Usage:  ./scripts/serve.sh              # serve with live reload
#         ./scripts/serve.sh --drafts     # any jekyll serve flag passes through
set -euo pipefail

RUBY_PREFIX="/opt/homebrew/opt/ruby@3.3"

if [[ ! -x "${RUBY_PREFIX}/bin/ruby" ]]; then
  echo "Ruby 3.3 not found at ${RUBY_PREFIX}." >&2
  echo "Install it with:  brew install ruby@3.3" >&2
  exit 1
fi

export PATH="${RUBY_PREFIX}/bin:${PATH}"
cd "$(dirname "${BASH_SOURCE[0]}")/.."

if ! bundle check >/dev/null 2>&1; then
  echo "Installing gems for Ruby $(ruby -e 'print RUBY_VERSION')..."
  bundle install
fi

exec bundle exec jekyll serve --livereload "$@"
