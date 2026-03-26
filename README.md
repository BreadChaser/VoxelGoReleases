# VoxelGoReleases

Public feed for the Voxel playtest launcher.

- `latest.json` is the manifest URL used by launcher clients.
- Platform zip files are hosted in this repo and referenced by `latest.json`.
- Source code stays private in a separate repository.

## Launcher manifest URL

Use this in `voxel-playtest.json` next to the launcher binary:

```json
{
  "manifest_url": "https://raw.githubusercontent.com/BreadChaser/VoxelGoReleases/main/latest.json"
}
```

## Publish a new playtest build

1. Replace the platform zip files in this repo:
   - `voxel-linux-amd64.zip`
   - `voxel-windows-amd64.zip`
   - (optional) `voxel-darwin-arm64.zip`, `voxel-darwin-amd64.zip`
2. Edit `latest.json` and update `version` and `build`.
3. Commit and push.

