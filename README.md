# linuxTools
----------------------

## Mkhtml

Adds a generic .html file to your current directory and links it to /stylesheet/style.css.

## Install

chmod a+x mkhtml
sudo cp mkhtml/usr/local/bin

/usr/local/bin is usually in your PATH. You can check it via echo $PATH. Now you can simply do
mkhtml.sh and it'll execute.

If more tools are added I'll make a easy install script but for now this will do.

//Credits go to https://www.reddit.com/user/Rusty-Swashplate/ for helping me improve my original https://www.reddit.com/r/linux/comments/kst3dc/mkhtml_i_created_a_tool_to_populate_htmlcss_files/ //

## Use

Type mkhtml in the terminal to populate the files

![Image of directory inside Atom](https://github.com/Nswayze/linuxTools/blob/main/imgs/screenshot.png)


--------------------------------------------------


## Addcolumns

Appends the following to a specified file.

```css


 /* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}

@media only screen and (min-width: 768px) {
  /* For desktop: */
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

-------------


## analyseHelper.sh

![Bash terminal displaying questions](https://github.com/Nswayze/linuxTools/blob/main/imgs/1.png)
![Image displaying output as an html file with css](https://github.com/Nswayze/linuxTools/blob/main/imgs/22.png)
![Demonstration of responsiveness for mobile device](https://github.com/Nswayze/linuxTools/blob/main/imgs/3.png)

Asks you questions to help you think and analyse a problems based on the method from https://www.criticalthinking.org/pages/the-elements-of-reasoning-and-the-intellectual-standards/480 it takes that input and then generates the output as "responsive" .html & .css files to also display appropriately on mobile devices.

## Install

chmod a+x analyseHelper.sh
sudo cp analyseHelper.sh /usr/local/bin

/usr/local/bin is usually in your PATH. You can check it via echo $PATH. Now you can simply do
mkhtml.sh and it'll execute.

If more tools are added I'll make a easy install script but for now this will do.

## Use

Type anaylseHelper.sh in the terminal. Will populate index.html & stylesheet/style.css in the working directory.


--------------------------------------------------

## tn (short for take note)

Will take an input and date it with it's input to ~/note.txt

## Use 

tn this is a note
