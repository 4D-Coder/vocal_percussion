# Vocal Percussion
[Built following the process of Beat Box](https://backend.turing.edu/module1/projects/beat_box/)
## What is a Linked List?

A linked list is a linear data structure used in computer science to organize elements in a sequence. Each element in the linked list is known as a node, and it contains data along with a reference (or link) to the next node in the sequence. This allows for efficient insertion or removal of elements from any position in the list

## Installation

This application utilizes your operating system's built-in text to speech program. You may need to install this program, especially if using this program outside of MacOS

### Linux/Debian

1. Ensure your package manager is up to date:

```shell
  sudo apt update
```

1. This project is built using [festival](https://www.cstr.ed.ac.uk/projects/festival/), however there are other options such as [espeak](https://espeak.sourceforge.net/). If you have neither, lets proceed with espeak:

```shell
  sudo apt install espeak
```

1. Once installed, `espeak` can be used in the command line for testing:

```shell
 espeak -s 175 "Hello World"
```


- For guidance on troubleshooting issues during this installation step, check out the [Possible Issues/Fixes]() segment.
