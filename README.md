# VoxelGoReleases

Public feed for the Voxel playtest launcher.

- **`latest.json`** at the repo root is the manifest URL used by launcher clients (`…/main/latest.json`).
- **Game packages** (versioned zips, history kept):
  - **`linux/`** — `voxel-<version>+<build>-linux-amd64.zip`
  - **`windows/`** — `voxel-<version>+<build>-windows-amd64.zip`
- **Launcher builds** (GUI, versioned filenames):
  - **`launcher/`** — `playtest-launcher-<launcherVer>+<launcherBuild>-linux-amd64`, `…-windows-amd64.exe`, `run-playtest-launcher.bat`
- Source code stays private in a separate repository.

Publishing is automated from the game repo: `./scripts/publish-playtest.sh` (see that repo’s Makefile `publish-playtest`).
