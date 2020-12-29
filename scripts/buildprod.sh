#!/bin/bash

echo "Setting baseURL to public site"
sed -e 's/^baseURL = ".*"$/baseURL = "http:\/\/mobyvb.com"/g' ./config.toml > ./config2.toml
mv ./config2.toml config.toml
sed -e 's/^\$baseURL: ".*";$/$baseURL: "http:\/\/mobyvb.com";/g' ./themes/lattice-hugo-theme/assets/sass/main.scss > ./themes/lattice-hugo-theme/assets/sass/main2.scss
mv ./themes/lattice-hugo-theme/assets/sass/main2.scss themes/lattice-hugo-theme/assets/sass/main.scss

hugo

echo "Setting baseURL to empty string"
sed -e 's/^baseURL = ".*"$/baseURL = ""/g' ./config.toml > ./config2.toml
mv ./config2.toml config.toml
sed -e 's/^\$baseURL: ".*";$/$baseURL: "";/g' ./themes/lattice-hugo-theme/assets/sass/main.scss > ./themes/lattice-hugo-theme/assets/sass/main2.scss
mv ./themes/lattice-hugo-theme/assets/sass/main2.scss themes/lattice-hugo-theme/assets/sass/main.scss
