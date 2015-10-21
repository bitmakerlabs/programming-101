# Programming 101

A weekend workshop at Bitmaker that introduces all of the concepts required to build a simple web application from start to finish.

## Getting setup

We'll do our best to keep the tools to a minimum so you can focus on the concepts and learning how to code. That being said, we need to install a few programs, some to power our application and others to make our coding workflow easy and efficient.

### [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)

We'll use Google Chrome as the web browser in this workshop. It provides some very powerful tools for developers that we'll be using to learn more about how the web works, how web pages are rendered and how code runs in a web browser.

### [Sublime Text 3](http://www.sublimetext.com/3)

Sublime Text is our text editor of choice and where we'll be writing all of our code. It provides some powerful features specifically geared toward writing code like highlighting keywords in many programming languages and the ability to easily jump between files in a project (among many others!).

### [Github Desktop](https://desktop.github.com/)

Github Desktop is a tool that we'll use to share and collaborate on code. All of the code for the workshop will be available through this app and it will give us a simple way of moving forward efficiently and keeping everyone on the same page.

### [Ruby](https://www.ruby-lang.org/en/)

Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write. We'll be using it to write the code that runs on the web server and interacts with our database.

#### Mac OS X

Mac users already have Ruby installed! If you're running Mac OS X Mavericks, Yosemite or El Capitan, you've got the latest major version of Ruby (2.0) installed on your computer.

**If you're running an older version of Mac OS X** [we'll need to do an advanced setup on your computer](http://brew.sh/), make sure you ask an instructor for help in that case.

#### Microsoft Windows

Windows users need to install Ruby on their computer using [RubyInstaller](http://rubyinstaller.org/). Download and install the latest version available (don't use the x64 variant, even if you're running 64-bit system).

### [SQLite](http://www.sqlite.org/download.html)

SQLite is a simple, well-tested and widely-used database system. In fact, it's running on all of your smartphones right now! We'll use it to save our application's data for future use.

#### Mac OS X

Again, if you're running Mac OS X, SQLite is already installed!

**If you happen to be running a really old version of OS X (pre-Leopard), you'll have to consult with an instructor, those operating systems are not supported for this workshop.**

#### Microsoft Windows

Windows users need to do a little bit of work to get SQLite setup on their machines:

1. Go to [SQLite3 download page](http://www.sqlite.org/download.html), "Precompiled Binaries For Windows" section;
2. Download `sqlite-shell-win32-x86` and `sqlite-dll-win32-x86` archive files;
3. Unzip those archives into a new folder called `C:\SQLite3`
4. [Follow the instructions on this page](http://www.java.com/en/download/help/path.xml) for your version of Windows to add the `C:\SQLite3` directory to your PATH variable (Windows 10 users can follow the Windows 7 steps).

This can be a bit complicated, but don't worry, we're here to help! Make sure to ask one of the instructors if any of these instructions go over your head.
