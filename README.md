# cm-pkg

Install specific custom nodes in a Docker container for consistency

## Quick Start

Start ComfyUI using `docker compose up`

## Using Snapshots

Save a ComfyUI Manager snapshot of an existing setup using:

```
python custom_nodes/ComfyUI-Manager/cm-cli.py save-snapshot --output snapshot.yaml
```

Place `snapshot.yaml` here.

Uncomment out the volume directive in `compose.yaml`.

Start ComfyUI using `docker compose up`

## Testing

Edit the Dockerfile and other files locally and build an image.

Run `docker compose up` and ensure that ComfyUI starts.
