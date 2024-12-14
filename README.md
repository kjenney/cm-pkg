# cm-pkg

Install specific custom nodes in a Docker container for consistency

## Quick Start

1. Update the binds in `compose.yaml` to match where your models, workflows, inputs, and outputs are.

2. Start ComfyUI using `docker compose up`

3. Go to http://localhost:8188

## Creating Snapshots

Save a ComfyUI Manager snapshot of an existing setup using:

```
python custom_nodes/ComfyUI-Manager/cm-cli.py save-snapshot --output snapshot.yaml
```

Place `snapshot.yaml` here.

## Testing

Edit the Dockerfile and other files locally and build an image.

Run `docker compose up` and ensure that ComfyUI starts.
