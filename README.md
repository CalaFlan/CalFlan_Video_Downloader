# Reaper YouTube Downloader:

## Set up
In order to use this script, you'll need to install yt-dlp and place the .exe into the "yt-dlp" folder as seen below

<img width="224" height="122" alt="image" src="https://github.com/user-attachments/assets/f39c0dfd-074d-44f6-9528-80ecd9591fbe" />


The yt-dlp git hub page can be found [here](https://github.com/yt-dlp/yt-dlp#installation)

Or the .exe can be downloaded directly from [This Link](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe)

For more information on yt-dlp, and why it is being used in this project, see the about yt-dlp section

## User Guide
### What's Included
Two scripts are included in this repo: 
* One script downloads video + audio. 
* The other downloads only the extracted audio.
  
The scripts are near identical, except for the arguments being passed to yt-dlp

### Step by Step
* Upon using the script you'll be prompted for a video URL
* Once you've pasted the URL, hit enter and the script will then open a command line and run yt-dlp with the appropriate arguments and begin downloading
* The video will be downloaded to your projects media folder, If the project is unsaved the default recording path will be used instead
* Download progress will be displayed in the command line
* Once the video is download is complete, the video will be imported into Reaper.  

## About yt-dlp
This script works by using yt-dlp, a public domain, open source and feature rich command-line based video downloader. 

[More information and the download for on yt-dlp can be found here](https://github.com/yt-dlp/yt-dlp)

yt-dlp and this script supports downloading form a wide range of websites, not just YouTube, including Vimeo, Twitch and many more:

[A full list of supported websites can be found here](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md) 

## Mac or Linux users
Currently this version of the script only works on PC, primarily because it is the only platform I have access to test on.

If you are a Mac or Linux user looking to use this script, I'd encourage you to fiddle around and try and get it working with this as a framework.

I imagine you'll simply need to replace the .exe and the cmd line functions with something appropriate for your machine
