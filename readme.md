# Rust4Diva

A Fast cross-platform mod manager written in rust for the steam version of Hatsune Miku Project Diva Mega Mix +

Toggle mods

![Main Screen of R4D](assets/main-lo.png)

Get new mods online directly in the app

![Online Search and DL Screen](assets/search-lo.png)

# Planned Features / To-Do List
- [ ] Mod pack presets for easy switching between incompatible mods
  - [x] [Pack format](#Modpack-JSON-Format) has been decided on
    - Json containing packname and a list of the modfolders included in the pack used as the priority order

  - [x] Modifying and applying packs
  - [ ] In app creation of new modpacks 
    - Currently you can manually create a new json file for one in the rust4diva config folder located in `%appdata%` (Windows) or `.confg` (Linux/MacOS)
- [x] Windows Support
  - [x] Finding the Diva Folder
  - [x] Oneclick URL Handling
- [x] MacOS Support
  - [x] ~~Literally just finding someone with a mac to test this~~ 
    - Thank you @zachw000
    - This was only tested on MacOS on Arm though, you can't even install Mega Mix plus using the regular version of steam though.
  - [ ] Url handling
    - Not sure how this works on MacOS
- [x] Commission a proper logo/icon
  - Logo is being made, just waiting now, Ty Nezuko

## Modpack JSON Format
```json
{
  "name": "Example Pack",
  "mods": [
    {"name": "test", "enabled": false}
  ]
}
```


# License
Code: GPL-3.0

Artwork: All Rights Reserved (Use allowed in packaging the application)