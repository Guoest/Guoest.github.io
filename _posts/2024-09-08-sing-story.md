---
layout: post
title: Hands-Free Music for My Daughter, Thanks to AI
categories: [life, tech]
---

<div class="table-of-contents" markdown="1">
### Contents
- [The Background Story](#the-background-story)
- [The Results](#the-results)
- [The Journey](#the-journey)
- [The Takeaway](#the-takeaway)
</div>

![](/images/baby-music.png)

## The Background Story

Music lights up my 6-month-old daughter’s face, especially the baby karaoke from [Raising Children Network](https://raisingchildren.net.au/guides/baby-karaoke). But there’s one issue: you have to manually hit play for each video, even though they’re part of a playlist. So my wife tasked me with finding a truly hands-free solution so we can enjoy the music without interruptions.

As a machine learning engineer, having AI in the solution is a must. So I quickly ruled out the idea of downloading all the videos and creating a YouTube playlist, there's too much human involved. I also found there’s a mobile app for baby karaoke, but the song collection is different and much shorter, so that wasn’t an option either.

I finally concluded that I’d need to build a webpage similar to Raising Children Network but with an autoplay feature. However, I’m not a web developer and have probably written fewer than 100 lines of HTML in my life. So, naturally, I turned to ChatGPT. 

## The Results

Here’s the [page](https://guoest.github.io/2024/09/04/sing-zoe.html) I built, and here’s the code ChatGPT generated—all without me writing a single line. Once you play the first video, the rest will autoplay in sequence. I also got full control over the song selection and order (mind you, my daughter has her own taste in music).

```html
<style>
  #video-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 80vh; /* Ensures it takes up space before the footer */
    margin-bottom: 20px; /* Adds space below the video */
    z-index: 1; /* Ensures video does not overlap */
  }
</style>

<div id="video-container">
    <script src="https://player.vimeo.com/api/player.js"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
    var videoIDs = [
        "287009749", // ABC
        "287009913", // Baba black ship
        "287362325", // Native animal
        "287353905", // Wheel on the bus
        "287353768", // Twikle little star
        "287353269", // Rock a bye baby
        "287353131", // Open shut them
        // "287352861", // Old Macdonald
        "287012695", // Kookaburra
        "287012197", // Incey Wincey Spider
        "287007315", // Inanay
        "287363391", // Row your boat Karaoke
        "287011508", // Heads and shoulder
        "287011293", // If you happy you know it
        "287010859", // G'day
        //"287010728", // Little green frog
        //"287010560", // 5 little duck
        //"287010317", // Children of dreaming
        "287009595", // One two three four five
        //"287009412", // Wheel on bus karaoke
        "287009236", // Twinkle karaoke
        //"287008692", // Rock a bye baby kara
        "287008561"  // Open shut them kara
    ];

        var currentVideoIndex = 0;

        // Create and append the iframe to the container
        var iframe = document.createElement('iframe');
        iframe.width = "640";
        iframe.height = "360";
        iframe.frameBorder = "0";
        iframe.allow = "autoplay; fullscreen";
        iframe.allowFullscreen = true;
        iframe.src = "https://player.vimeo.com/video/" + videoIDs[currentVideoIndex];
        document.getElementById('video-container').appendChild(iframe);

        var player = new Vimeo.Player(iframe);

        function playNextVideo() {
            currentVideoIndex++;
            if (currentVideoIndex < videoIDs.length) {
                player.loadVideo(videoIDs[currentVideoIndex]).then(function() {
                    player.play();
                }).catch(function(error) {
                    console.error('Error loading video:', error);
                });
            } else {
                console.log('All videos have been played.');
            }
        }

        player.on('ended', function() {
            playNextVideo();
        });

        // Start playing the first video
        player.play();
    });
    </script>
</div>
```
## The Journey

The process turned out to be quite fun. I copied the entire HTML from the [Raising Children Network](https://raisingchildren.net.au/guides/baby-karaoke) page and told ChatGPT I wanted the videos to autoplay. After a few attempts, it got it working using JavaScript. I then took screenshots of the page it just built, sent them back to ChatGPT, and asked it to fix the styling and formatting. Eventually, we landed on the final solution. Again, here is the [page](https://guoest.github.io/2024/09/04/sing-zoe.html), and now I can open the page and enjoy the music with my daughter hands-free. You are welcome if you are facing the same issue with baby karaoke.

![](/images/chatgpt.png "The screenshot-driven development")


## The Takeaway

This is how GenAI is reshaping the landscape. 

You don’t need to be a developer or machine learning engineer to turn your idea into a prototype with ChatGPT. It aligns perfectly with the [lean startup](https://theleanstartup.com/) approach: rapid prototyping, quick market testing, fast feedback, and swift iteration. Once you find a winning idea, you bring it in-house, hire developers to refine and build it out—likely with ChatGPT’s help as well. 

So, what’s your winning idea?
