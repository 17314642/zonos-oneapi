### Instructions:
```bash
git clone "https://github.com/17314642/zonos-oneapi"
cd zonos-oneapi && git clone "https://github.com/Zyphra/Zonos"
patch -p1 < enable-xpu.patch
podman build -t oneapi-podman .
./run.sh
```

#### Execute these inside container:
- Verify that your GPU is available: `clinfo | grep -E "Number of platforms|Device Name"`

```bash
./setup-venv.sh
source venv/bin/activate
cd Zonos && python3 gradio_interface.py
```
Python should output `Using xpu` at the beginning of stdout

Then open http://127.0.0.1:7860 in your browser.

To monitor memory usage you can do: `podman container exec -it zonos-oneapi ./watch-mem.sh`
