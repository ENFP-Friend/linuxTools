# linuxTools
----------------------

## Mkhtml

Adds a generic .html file to your current directory and links it to /stylesheet/style.css.

## Install

chmod a+x mkhtml.sh
sudo cp mkhtml.sh /usr/local/bin

/usr/local/bin is usually in your PATH. You can check it via echo $PATH. Now you can simply do
mkhtml.sh and it'll execute.

If more tools are added I'll make a easy install script but for now this will do.

## Use

Type mkhtml in the terminal to populate the files

![Image of directory inside Atom](https://github.com/Nswayze/linuxTools/blob/main/screenshot.png)
--------------------------------------------------


## Addcolumns

Appends the following to a specified file.

```css

.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}
```

## Install

chmod a+x addcolumns
sudo cp addcolumns /usr/local/bin

## Use

Addcolumns Arg1

Example:
Addcolumns stylesheet/style.css

