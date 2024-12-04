# Extract-WutheringWaves-LogURL

## Overview
This repository provides a PowerShell script to extract specific URLs from the log files of the game *Wuthering Waves*. These URLs can be used for importing convene history into tools like Wuwa Tracker.

---

## Features
- **Log File Path Check**: Ensures the specified game log file exists.
- **URL Pattern Matching**: Searches for URLs matching specific patterns in the log file.
- **Clipboard Integration**: Automatically copies the extracted URL to the clipboard for easy use.
- **User Guidance**: Provides prompts and error messages for smooth operation.

---

## Requirements
- **Platform**: Windows with PowerShell support.
- **Game Installation Path**: Ensure the correct installation path for *Wuthering Waves* is configured in the script.

---

## Usage
1. **Edit the Script**: Update the `$gamePath` variable in the script to match your game installation path.
2. **Run the Script**:
   - Open PowerShell.
   - Navigate to the script's directory.
   - Run the script using `.\Extract-WutheringWaves-LogURL.ps1`.
3. **Follow Prompts**:
   - If the log file is found and contains matching URLs, the script will:
     - Display the extracted URL.
     - Copy it to the clipboard.
   - If no matching entries are found, it will guide you to ensure convene history is opened in the game.

---

## Script Walkthrough
### Input
- Game log file located at:
  ```
  D:\Game\Wuthering Waves\Wuthering Waves Game\Client\Saved\Logs\Client.log
  ```

### Output
- Extracted URL, such as:
  ```
  https://aki-gm-resources-oversea.aki-game.net/path/to/resource
  ```
- Copies the URL to the clipboard.

---

## Example Output
```plaintext
Convene Record URL: https://aki-gm-resources-oversea.aki-game.net/path/to/resource

URL copied to clipboard. Please paste to Wuwa Tracker and click the Import History button.
```

---

## Notes
- The script assumes the default game installation path. Update `$gamePath` if the game is installed elsewhere.
- Ensure you have opened the Convene History in the game to generate relevant log entries.
- Modify or extend the URL patterns in the script as needed to match different scenarios.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.
