FROM julia:1.11-bookworm
RUN julia -e 'import Pkg; Pkg.add([Pkg.PackageSpec(name="Pluto", version="0.20")]);'
WORKDIR /workspace
VOLUME /workspace
EXPOSE 1234
ENTRYPOINT [ "julia", "-e", "import Pluto; Pluto.run(host=\"0.0.0.0\", port=1234, launch_browser=false, require_secret_for_access=false, require_secret_for_open_links=false)" ]
