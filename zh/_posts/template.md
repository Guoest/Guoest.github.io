---
layout: post
title: 你的文章标题
categories: [tech] # 或 [life] 或 [tech, life]
lang: zh
# Permalink examples:
# For [tech]: /zh/tech/YYYY/MM/DD/your-post-title.html
# For [life]: /zh/life/YYYY/MM/DD/your-post-title.html
# For [tech, life]: /zh/tech/life/YYYY/MM/DD/your-post-title.html
# For [life, tech]: /zh/life/tech/YYYY/MM/DD/your-post-title.html
permalink: /zh/tech/YYYY/MM/DD/your-post-title.html
---

<div class="table-of-contents" markdown="1">
### 目录
- [基本设置](#基本设置)
- [基本格式](#基本格式)
- [列表](#列表)
</div>

## 基本设置

Jekyll 要求博客文章文件按照以下格式命名：

`年-月-日-文件名.md`

其中 `年` 是四位数字，`月` 和 `日` 都是两位数字，`文件名` 是你选择的任何文件名，用来提醒自己这篇文章的内容。`.md` 是 markdown 文件的扩展名。

文件的第一行应以单个井号开始，然后是一个空格，再是你的标题。这就是在 markdown 中创建"*一级标题*"的方法。然后你可以通过重复井号来创建二级、三级等标题，就像你在上面 `## 文件名` 这一行看到的那样。

## 基本格式

你可以使用*斜体*、**粗体**、`代码字体文本`，以及创建[链接](https://www.markdownguide.org/cheat-sheet/)。这是一个脚注 [^1]。这是一条水平线：

---

## 列表

这是一个列表：

- 项目 1
- 项目 2

这是一个编号列表：

1. 项目 1
1. 项目 2

## 框和其他元素

> 这是一个引用

{% include alert.html text="你可以包含警告框" %}

...还有...

{% include info.html text="你可以包含信息框" %}

## 图片

![](/images/logo.png "fast.ai 的 logo")

## 代码

通用预格式化文本：

    # 做一件事
    do_thing()

Python 代码和输出：

```python
# 打印 '2'
print(1+1)
```

    2

## 表格

| 列 1 | 列 2 |
|-|-|
| 一件事 | 另一件事 |

## 脚注

[^1]: 这是脚注。