# Reaper YouTube Downloader:


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

For ease of distribution the compiled .exe of yt-dlp is included with this repo, but you can replace this with your own for the sake of security.
Simply download the .exe from the [yt-dlp github page](https://github.com/yt-dlp/yt-dlp#release-files)

yt-dlp and this script supports downloading form a wide range of websites, not just YouTube, including Vimeo, Twitch and many more:

[A full list of supported websites can be found here](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md) 

## Mac or Linux users
Currently this version of the script only works on PC, primarily because it is the only platform I have access to test on.

If you are a Mac or Linux user looking to use this script, I'd encourage you to fiddle around and try and get it working with this as a framework.

I imagine you'll simply need to replace the .exe and the cmd line functions with something appropriate for your machine
