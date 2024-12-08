# cm-pkg

Install specific custom nodes in a Docker container for consistency

## Quick Start

Save a ComfyUI Manager snapshot of an existing setup using:

```
python custom_nodes/ComfyUI-Manager/cm-cli.py save-snapshot --output snapshot.yaml
```

Place `snapshot.yaml` in `/tmp` of the system where you are starting the container.

Start ComfyUI using `docker compose up`

## Testing

Edit the Dockerfile and other files locally and build an image. Run `docker compose up` and ensure that ComfyUI starts.
