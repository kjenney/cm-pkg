# cm-pkg

Install specific custom nodes in a Docker container for consistency

## Epic Videos

https://www.youtube.com/watch?v=gHI6PjTkBF4&t=425s

https://www.patreon.com/posts/shoot-epic-with-117830088?utm_medium=clipboard_copy&utm_source=copyLink&utm_campaign=postshare_creator&utm_content=join_link

https://www.patreon.com/posts/shoot-epic-with-117830088?utm_medium=clipboard_copy&utm_source=copyLink&utm_campaign=postshare_creator&utm_content=join_link

## Quick Start

1. Update the binds in `compose.yaml` to match where your models and workflows are.

2. Start ComfyUI using `docker compose up`

3. Go to http://localhost:8188

4. Follow the rest of the steps in the installation guide. 


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
