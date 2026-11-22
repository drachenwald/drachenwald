# drachenwald

This is the source code for the website of the Kingdom of Drachenwald in the Society for Creative Anachronism. You are welcome to submit changes as pull requests through GitHub. For individual pages, this can be done through the GitHub interface. If you would like to make more substantial changes, follow these instructions to get a local copy of the code, build the website on your machine, and submit changes back.

Overview for the internet-uninitiated, with some terminology
======================

The web artificers store the site content in [GitHub][], and use [Git][], a version-control software, to download copies to their local machines, work on the content, view/test new content on their machines, then save them back to GitHub.

The GitHub account and storage is free. A condition of free accounts is that they are public and open source - anyone can search for the content and view it, code and all. Anyone with a GitHub account can submit changes or edits. The web artificers control the final published changes, to prevent malicious changes.

Web artificers work on the content itself (the words) using source code editors. 
The text is written using [Markdown] conventions, and saved as text files with .md suffix. Markdown is almost like writing email in plain text. 

They use assorted graphics software to crop and resize photos.   

To create the site, the web artificers use [Ruby][] a programming language, together with [Jekyll][] a Ruby 'gem' (a library of prewritten code, with specific chunks of instructions). Ruby has thousands of gems available, written by geeks who love to code, to make the magic of the internet happen.

Jekyll does the hard work of turning your words into webpages. 

The web artificers are using a theme designed for Jekyll called [Minimal Mistakes]. Like a template in word processing or spreadsheets, a theme makes sure that all the pages have a similar layout, font, line spacing, and behaviour, so they don't have to re-create this for every page individually. 

Contributing at the 'code-face' requires time to download and install software, learn how to use it, and learn the order of publishing events (called the workflow). There are many guides, tutorials and cheatsheets available to help. Not to mention Pelicans.

[GitHub]: https://github.com/
[Git]: https://git-scm.com/
[Ruby]: https://www.ruby-lang.org/en/
[Jekyll]: https://jekyllrb.com/
[Minimal mistakes]: https://mademistakes.com/work/minimal-mistakes-jekyll-theme/
[Markdown]: https://daringfireball.net/projects/markdown/syntax


Software needed
===============
These instructions assume you have full permissions on your own machine to download, install and run software.

macOS
-----

**git:** Type `git` at the command line; if it's not already installed, you will be prompted to install Xcode Command Line Tools.

**Docker:** Download and run [Docker Desktop](https://www.docker.com/products/docker-desktop).

Windows 11 (and Windows 10 version 1903 or later)
-------------------------------------------------

**git:** Download and install [Git for Windows](https://git-scm.com/download/win). This also installs Git Bash, the command-line window you'll use in later steps.

**Docker:** Download and run [Docker Desktop](https://www.docker.com/products/docker-desktop). Docker Desktop supports Windows 11 Home and Pro via the built-in WSL 2 backend.

Older Windows
-------------

**git:** Download and install [Git for Windows](https://git-scm.com/download/win). This also installs Git Bash, the command-line window you'll use in later steps.

**Ruby and Jekyll:** Install using the [instructions on the Jekyll site](https://jekyllrb.com/docs/installation/windows/).

Linux
-----

**git:** Git is available in the package manager for all major distributions. See [instructions for your distro on the Git site](https://git-scm.com/download/linux).

**Docker:** Follow the [Docker Engine install guide for your distro](https://docs.docker.com/engine/install/) (Ubuntu, Debian, Fedora, and others are covered). Alternatively, [Docker Desktop for Linux](https://docs.docker.com/desktop/setup/install/linux/) is available if you prefer a graphical interface.

**Ruby and Jekyll** (if not using Docker): Follow the [Jekyll install guide for Linux](https://jekyllrb.com/docs/installation/other-linux/).

### Jekyll
- - - - -

If you have not used Jekyll before, [see the Jekyll website for a ground-up intro](https://jekyllrb.com/tutorials/convert-site-to-jekyll/#what-is-a-jekyll-website).

The short version:

* You create content: mainly text in Markdown.
* Add images or data.
* Save content in appropriate folders.
* Commit (and push) the content to GitHub, using Git commands.
* Run Jekyll from the command line.

Jekyll creates the HTML versions of the pages, following the instructions in the theme to provide the layout, formatting and navigation. **You don't need to edit any HTML manually.**
- - - - -

Set yourself up on GitHub with an SSH key
=========================

Set up an account on [GitHub][].

Create an SSH key and add the public key to your GitHub profile. An SSH key is a pair of files that lets your computer connect to GitHub without needing your password every time. [Instructions on GitHub.](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)


Choose an editor to view and edit the content of the site
================================
**Notepad++** is plain and simple. [Notepad++](https://notepad-plus-plus.org/)

**Visual Studio Code** is slightly whizzier, and helps you work through some of the downloading and uploading steps in Git as well. [Download Visual Studio code](https://code.visualstudio.com/)

You now have all the tools to start copying the site from GitHub, and editing it on your own machine.

Create your own fork of the website
=============================

A "fork" is your own personal copy of the repository on GitHub. You make changes in your fork, then submit them back to the main repository via a Pull Request.

1. Go to the [project page on GitHub](https://github.com/drachenwald/drachenwald).
2. Click the **Fork** button in the top-right corner of the page.
3. On the "Create a new fork" page, leave the settings as they are and click **Create fork**.

GitHub will create a copy of the repository under your own account (e.g. `https://github.com/<your-username>/drachenwald`).

Get your clone of the website
=============================

**Windows:** Open Git Bash from your start menu.

**Mac and Linux:** Open a terminal window.

Go to **your fork** of the project on GitHub (e.g. `https://github.com/<your-username>/drachenwald`). Click on the **Code** button, see the **Local** tab in that box, and copy the link for **SSH**.

In your command line window, run:

```
git clone git@github.com:<your-username>/drachenwald.git

cd drachenwald
```

Then add the original repository as a remote called `upstream`, so you can pull in future updates:

```
git remote add upstream git@github.com:drachenwald/drachenwald.git
```

Start the Jekyll development server
===================================

**If you installed Docker Desktop earlier,** type:

```
docker compose up
```

Wait for this to install the needed Docker image and libraries. (This will be faster on subsequent runs.)

**If you installed the Ruby environment earlier, type:**

```
bundle install

bundle exec jekyll serve
````

Now visit http://127.0.0.1:4000/j/ in your browser and you should see the front page of the website. If you are seeing a HTTP 404 Not Found error, try http://127.0.0.1:4000/.

If you see an error about SSL, make sure you are using an URL that starts with HTTP, not HTTPS.

Make changes and submit them back
=================================

__NOTE: When you're editting the site, ignore the _site directory, this directory gets written by jekyll when the website is compiled.

__NOTE: All your filenames must use lower case only.__ Mixed case filenames introduce errors in systems that are case sensitive. Avoid entirely by using only lower case.

To get the latest changes from the main repository into your fork:

```
git fetch upstream
git checkout main
git merge upstream/main
```

To create a new branch (which acts as a parallel universe copy of the site) for your changes, and switch to it:

```
git branch <branch name>
git checkout <branch name>
```

When you make changes, to commit them and push them to your fork on GitHub:

```
git add .
git commit -m "<message for the git log>"
git push origin <branch name>
```

Once you've pushed changes to your fork, go to your fork's page on GitHub and click the **Compare & pull request** button to open a Pull Request back to the main `drachenwald/drachenwald` repository.

If you keep using the same branch for future changes, bring it up to date with the main repository by frequently running:

```
git fetch upstream
git checkout main
git merge upstream/main
git checkout <branch name>
git merge main
```

Conventions
===========
* link to other pages using this format:  {{ site.baseurl }}{% link images/heraldry/gotviktrans.gif %}


Adding files (PDFs, images, etc.)
==================================

To add a downloadable file such as a PDF, place it in a `files/` subfolder next to the relevant page. For example, a PDF for the archery office lives at:

```
offices/archery-thrown-marshal/files/archery-round-quick-reference.pdf
```

Then link to it from a Markdown page using the `link` tag:

```
[link text]({{ site.baseurl }}{% link offices/archery-thrown-marshal/files/archery-round-quick-reference.pdf %})
```

A few things to remember:
* Use lower case filenames with hyphens instead of spaces (e.g. `my-document.pdf`, not `My Document.pdf`).
* The `files/` subfolder is recommended for downloadable files.
* Images used within page content go in the `images/` folder at the top level of the site, organised by topic.
* Commit and push the file the same way as any other change.
* If you add a `link` tag pointing to a file that doesn't exist yet, Jekyll will refuse to build the site. Make sure the file is in place before adding the link, or add both in the same commit.
* Likewise, if you remove a file, first check that no pages link to it. Jekyll will fail to build if a `link` tag points to a missing file, which means that any changes to the website would not be available before the leftover links are removed as well.


Git References
============
* [GitHub's "Get Started" documentation](https://docs.github.com/get-started)
* [Git's own documentation](https://git-scm.com/book/en/v2)
* [Another cheat sheet for Git commands](https://git-scm.com/docs/giteveryday)
* [Git the simple guide](https://rogerdudler.github.io/git-guide/)

# Ruby and Jekyll Troubleshooting: when stuff just doesn't work

This anecdotal checklist is for people new to using command line tools, Ruby and Jekyll. 
It's based on using these tools on a creaking Toshiba laptop, with Win10 Home, and also in a Windows-based work setting with more modern hardware. YMMV.

## Installing Ruby in a Windows environment
Ruby requires a directory 'path' that has no spaces in it. So unfortunately, installing it in 'Program Files' with the rest of your applications won't work. You need a path that has no gaps. 

At home, this requirement meant installing Ruby on C:\ drive, the same 'level' as my 'Windows' and 'Program Files' directories.

At work, where I don't have permissions to add or change anything on my C:\ drive, it meant installing Ruby at the highest 'level' within my user profile.

## Installing Jekyll gems
Each Git directory (aka repository, containing website content) requires *its own set of gems*, including the Jekyll-related ones that generate the site. So for example, if you are working both on the Drachenwald website, and a shire website, both stored on GitHub, you need to install the Jekyll bundle once in each directory.

This is a *different location* from where you install Ruby.

If you try to run Jekyll using 'bundle exec jekyll serve' when the gems aren't there, Ruby will tell you she can't find the gems and doesn't recognise the command.

So from your Git Bash shell, `cd` (change directory) to the cloned directories of each site, then run 
`gem install bundler`
then
`bundle install`

## Jekyll says it cannot build because it's missing a gem

Sometimes...gems have 'dependencies' - they need another gem buddy in order to run.

And they need a *specific version* of their buddy to work.

You can track down individual gems in https://rubygems.org/ and add them to the bundle (entering the command from the correct directory location).

`gem install <name of gem you want>`

Alternately you can update all the installed gems. This option takes a little longer.
`gem update`

## Jekyll doesn't build and throws a peculiar error

You saved your content, added it, committed it, and pushed it. You run 'bundle exec jekyll serve' but it gives you an  error. Here's an example:

`Liquid Exception: Could not find document 'offices/herald/drachenwaldawardsorders.md' in tag 'link'. Make sure the document exists and the path is correct. in heraldsbeforetheinternet.md`

Check: which directory are you in? You can only run Jekyll from the 'top' of the directory for your site, so for the Drachenwald website it's 
` $ `[your_directories_path`]/git/drachenwald`>

## Jekyll doesn't build and throws an error, with a filename, a line and column location of the error

~~~~
YAML Exception reading C:/Users/eabrown/git/drachenwald/offices/herald/zenofgoodcourtguidance.md: (<unknown>): mapping values are not allowed in this context at line 2 column 29
~~~~~~~
Jekyll is picky about the syntax that tells it what is text, and what is an instruction. 

It especially needs clear 'front matter' - the first few lines of every file, marked off with 3 hyphens above and below, where you specify the file name, the file title, the file path, which page template to use when building the html. 
Typically you have to open the file, go to the point where the character is wrong, and change it. Save, add, commit, try again.

Example: a colon (:) is part of the syntax for Jekyll. 
If you put a colon in a page title (eg. a page title of 'Drachenwald: where you persona comes from'), Jekyll is wondering where tf its instructions are. 
So for any page titles that need colons, enter the whole title within double quotes ("Drachenwald: where your persona comes from"). The quotes tell Jekyll not to pay any attention to this particular colon.

## Jekyll runs ok and builds on your machine, but *none of your stuff* is there 

Check: are you running Jekyll in the right branch? 
Git allows you to 'branch' (start a separate copy) of the site, for you to work on, and add back into the main copy ('merge') later. If you save your work in one branch, but run Jekyll from another, your work won't appear. Cue panic...

In Git Bash: look at the branch name. Check and see where your work is and move to it, to see your changes.

## Jekyll References

<https://guides.rubygems.org/rubygems-basics/#installing-gems>  

<https://jekyllrb.com/tutorials/convert-site-to-jekyll/>

Jekyll theme for kingdom website

<https://mmistakes.github.io/minimal-mistakes/> 

Setting up images in this theme
<https://mmistakes.github.io/minimal-mistakes/docs/utility-classes/>

