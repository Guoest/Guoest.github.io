---
layout: post
title: 借助AI为女儿实现免手动音乐播放
date: 2024-09-08
categories: [life, tech]
lang: zh
permalink: /zh/life/tech/2024/09/08/sing-story.html
---

<div class="table-of-contents" markdown="1">
### 目录
- [背景故事](#背景故事)
- [成果展示](#成果展示)
- [开发历程](#开发历程)
- [心得体会](#心得体会)
</div>

![](/images/baby-music.png)

## 背景故事

音乐能让我6个月大的女儿笑逐颜开，特别是[Raising Children Network](https://raisingchildren.net.au/guides/baby-karaoke)上的婴儿卡拉OK。但有一个问题：即使这些视频在播放列表中，每个视频都需要手动点击播放。所以我妻子让我找一个真正免手动的解决方案，这样我们就能不间断地享受音乐了。

作为一名机器学习工程师，解决方案中必须要有AI。所以我很快就排除了下载所有视频并创建YouTube播放列表的想法，这需要太多人工操作了。我还发现有一个婴儿卡拉OK的移动应用，但歌曲集不同且少得多，所以那也不是一个好选择。

我最终得出结论，需要构建一个类似Raising Children Network的网页，但带有自动播放功能。然而，我不是网页开发者，一生中写过的HTML代码可能不到100行。所以，很自然地，我求助于ChatGPT。

## 成果展示

这是我构建的[页面](/life/2024/09/04/sing-zoe.html)，这是ChatGPT生成的代码——全程没有我写一行代码。一旦你播放第一个视频，其余的将按顺序自动播放。我还完全掌控了歌曲的选择和顺序（要知道，我女儿对音乐有她自己的品味）。

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
## 开发历程

这个过程其实挺有趣的。我复制了[Raising Children Network](https://raisingchildren.net.au/guides/baby-karaoke)页面的全部HTML，告诉ChatGPT我想要视频自动播放。经过几次尝试，它使用JavaScript实现了。然后我截取了它刚刚构建的页面截图，发回给ChatGPT，让它修复样式和格式。最终，我们得到了最终方案。再次强调，这是[页面](/life/2024/09/04/sing-zoe.html)，现在我可以打开页面，免手动地和女儿一起享受音乐了。如果你也遇到婴儿卡拉OK的同样问题，欢迎使用。

![](/images/chatgpt.png "截图驱动的开发")


## 心得体会

这就是生成式AI如何重塑现状。

你不需要成为开发者或机器学习工程师，就能用ChatGPT把你的想法变成原型。这完全符合[精益创业](https://theleanstartup.com/)的方法：快速原型、快速市场测试、快速反馈和快速迭代。一旦你找到一个成功的想法，就把它纳入内部，雇佣开发者来完善和构建——很可能也会借助ChatGPT的帮助。

那么，你的成功想法是什么呢？