if [[ -e ./.flatpak-builder ]]; then
  rm -rf ./.flatpak-builder
fi
if [[ ! -e flatpak-cargo-generator.py ]]; then
  wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/cargo/flatpak-cargo-generator.py
fi
if [[ ! -e pyproject.toml ]]; then
  wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/cargo/pyproject.toml
else 
  echo "pyproject already installed"
fi

source $(poetry env info --path)/bin/activate
poetry install 
python3 ./flatpak-cargo-generator.py ../Cargo.lock -o rust4diva-sources.json 
rm -rf ./diva_repo
mkdir ./diva_repo
flatpak-builder repo xyz.rust4diva.Rust4Diva.json --force-clean --user -y --repo=./diva_repo
flatpak build-bundle ./diva_repo rust4diva.flatpak xyz.rust4diva.Rust4Diva