---
reponame: ip-camera-stream
layout: repo
page: https://idle.run/ip-camera-stream
title: IP Camera Streaming on Youtube
tags: ip-camera, youtube
date: 2016-08-12
---

![Youtube Live](https://github.com/idlerun/ip-camera-stream/raw/master/live.jpg)

## Step 1: Camera
Need an IP Camera with RTSP support. I used the "JOOAN 703ERC-T".
Make reference to [iSpy Devices](https://www.ispyconnect.com/sources.aspx) for information about camera support

## Step 2: Configure Camera
This varies by device. For my camera specifically:

- Device had a hard coded IP address of 192.168.1.57. I needed to change my network to the 192.168.1.X range to be able to access it.
- Installed the Device Management software that came with the camera
- Used the device manager to change the camera networking settings to my normal internal network range.

## Step 3: Video Stream Test

Make reference again to [iSpy Devices](https://www.ispyconnect.com/sources.aspx) for RTMP address to use for your device.

Important note: The RMTP address will need to be changed if it includes a username/password that doesn't match that of your camera.

The address for my device is `rtsp://192.168.56.23/user=admin_password=_channel=1_stream=0.sdp`

Open the RTSP address in VLC media player and it should stream your camera video


## Step 4: Youtube Live
Sign up for [Youtube Live](https://www.youtube.com/live_dashboard) and create a Live Event or use the default Live Stream. The default Live Stream must be public, so I use Live Events.

Set the broadcast settings to your preference. The injestion settings should be set based on how fast your internet upload speed is.

## Step 5: Broadcast Software

Install the open source [Open Broadcasting Studio](https://obsproject.com/)

Add a "Media Source" in the sources section and set it to the same RTSP address that you used in VLC.

In "Setting" open the Stream Settings tab and set it to use Youtube Live. Copy in the secret Stream ID from your Youtube Event.

Press "Start Streaming" to start streaming to youtube.

## Step 6: Stream

Go back to your Youtube Event "Live Dashboard" and click "Start Preview". It should show that the stream is healthy and allow you to Start Streaming.
