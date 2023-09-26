# Vocal Percussion
Build inspired by [Beat Box](https://backend.turing.edu/module1/projects/beat_box/), a linked-list excersise at the Turing School of Software and Design.

## What is a Linked List?

A linked list is a linear data structure used in computer science to organize elements in a sequence. Each element in the linked list is known as a node, and it contains data along with a reference (or link) to the next node in the sequence. This allows for efficient insertion or removal of elements from any position in the list

## Installation

This application utilizes your operating system's built-in text to speech program. You may need to install this program, especially if using this program outside of MacOS

### Linux/Debian

1. Ensure your package manager is up to date:

```shell
  sudo apt update
```

1. This project is built using [festival](https://www.cstr.ed.ac.uk/projects/festival/), however there are other options such as [espeak](https://espeak.sourceforge.net/). If you have neither, lets proceed with festival:

```shell
  sudo apt install festival
```

- For guidance on troubleshooting issues during this installation step, check out the [Possible Issues and Fixes](#possible-issues-and-fixes) segment.

### Possible Issues and Fixes
#### ❗ Inability to view coverage metrics

This application uses [SimpleCov](https://github.com/simplecov-ruby/simplecov) for test coverage observability. If you are using a debian/ubuntu system, instead of `open coverage/index.html` it's suggested to install something like `xdg-utils`, and run `xdg-open coverage/index.html` to see test coverage metrics. More details contained within the [SimpleCov documentation](https://github.com/simplecov-ruby/simplecov#:~:text=After%20running%20your%20tests%2C%20open%20coverage/index.html%20in%20the%20browser%20of%20your%20choice.%20For%20example%2C%20in%20a%20Mac%20Terminal%2C%20run%20the%20following%20command%20from%20your%20application%27s%20root%20directory%3A).
