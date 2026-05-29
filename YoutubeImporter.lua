-- CHANGE ME
local ytdlp_path = "D:\\Projects\\_Reaper_Scripts\\Private\\WIP\\YoutubeImporter\\yt-dlp" -- Replace with your yt-dlp path, remember to use double backslashes in the path
local ytdlp_exe = ytdlp_path .. "\\yt-dlp.exe"
-- Settings
local Download_format = "-x --force-overwrites --audio-format wav" -- Replace with your desired format options
local VideoDownload_format = '-f "bv[ext=webm]+ba[ext=m4a]" --restrict-filenames' -- Replace with your desired format options
 Download_format = VideoDownload_format
--
local url = ""
local download_Path = reaper.GetProjectPath("")-- Gets set to ReaProject Path, or Default recording path if project is not saved
--
local function promptURL()
    local retval, user_input = reaper.GetUserInputs("YouTube Downloader", 1, "Enter YouTube URL:, extrawidth=200",url)
    if retval then
        url = user_input
    else
        url = nil
    end
end

local function get_last_file_name(download_Path)
    local command = 'dir /a-d /o-d /tc /b "'..download_Path..'" 2>nul:' -- /tw for last modified file, /tc for last created file
    local pipe = io.popen(command)
    local file_name = pipe:read()
    pipe:close()
    return file_name
 end
 
 local function importVideo()
    local file_name = get_last_file_name(download_Path)
    if file_name then
        reaper.InsertMedia(download_Path.."\\"..file_name,1)
    else
        reaper.ShowConsoleMsg("Directory is empty")
    end
 end

local function DownloadVideo()
    if not url then -- Check if URL is provided
        reaper.ShowMessageBox("No URL provided", "Error", 0)
        return
    end
    
    -- Check if exe exists
    local file = io.open(ytdlp_exe, "r")
    if file then
        io.close(file)
    else
        reaper.ShowMessageBox("yt-dlp.exe not found at: " .. ytdlp_exe, "Error", 0)
        return
    end
    
    -- Build the command to run yt-dlp with the specified options
    local command = "cmd /c \"\"" .. ytdlp_exe .. "\" " .. Download_format .. " -P  \"" .. download_Path .. "\" \"" .. url .. "\" 2>&1\""
    -- reaper.ShowConsoleMsg("Running command: " .. command .. "\n")
    
    -- Run the command 
    os.execute(command)
    importVideo()
end

promptURL()
DownloadVideo()