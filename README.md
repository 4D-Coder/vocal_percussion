# Vocal Percussion
Build inspired by [Beat Box](https://backend.turing.edu/module1/projects/beat_box/), a linked-list excersise at the Turing School of Software and Design. While the project guidelines are structured around development on `MacOS`, this project was built entirely using `Debian 6.1.52-1 (2023-09-07) x86_64 GNU/Linux`.

## What is a Linked List?

A linked list is a linear data structure used in computer science to organize elements in a sequence. Each element in the linked list is known as a node, and it contains data along with a reference (or link) to the next node in the sequence. This allows for efficient insertion or removal of elements from any position in the list.

## Installation

This application utilizes your operating system's built-in text to speech program. You may need to install this program, especially if using this program outside of MacOS.

### Linux/Debian

1. Ensure your package manager is up to date:

```shell
  sudo apt update
```
2. Download and install necessary gems
```shell
  bundle update
  bundle install
```
3. This project is built using [festival](https://www.cstr.ed.ac.uk/projects/festival/), however there are other options such as [espeak](https://espeak.sourceforge.net/). If you have neither, lets proceed with espeak:

```shell
  sudo apt install espeak
```

4. Once installed, you can test for a proper`espeak` installation by issuing the following command:

```shell
 espeak -s 175 "Hello World"
```

- For guidance on troubleshooting issues during this installation step, check out the [Possible Issues and Fixes](#possible-issues-and-fixes) segment.

## Usage
This program allows you to utilize your systems TTS program to "Beat Box" or repeat an argument given in the command line with a customizable voice (default `english-us`) and rate (default `500`).`espeak --voices=en-us` will list your english-speaking options, which then can be passed to this program as one of the arguments in the following format :

`$ ruby vocal_percussion.rb -r <rate> -v <voice_selection> <sounds>`

```bash
$ espeak --voices=en-us
Pty Language Age/Gender VoiceName          File          Other Languages
 2  en-us          M  english-us           en-us         (en-r 5)(en 3)
 5  en-us          F  us-mbrola-1          mb/mb-us1     (en 8)
 5  en-us          M  us-mbrola-2          mb/mb-us2     (en 7)
 ...
 5  en-sc          M  en-scottish          other/en-sc   (en 4)
```

```bash
$ ruby vocal_percussion.rb -v en-scottish "deep dop dop deep"
  # will playback using custom voice with the default rate of 500
```

Alternatively, you can opt to playback using a default voice with a custom rate, or customize both:

```bash
$  ruby vocal_percussion.rb -r 100 "deep dop dop deep"
$  ruby vocal_percussion.rb -v en-scottish -r 100 "deep dop dop deep"
```


### List of Currently Supported Beats
Currently, the program only supports a set list of "beats". If the TTS states `"List Empty!"`, it's likely that youve passed in an invalid beat.

#### Supported:
`"tee", "dee", "deep", "bop", "boop", "la", "na", "ditt", "doo", "woo", "hoo", "shu", "dop"`

### Possible Issues and Fixes
#### ❗ Inability to view coverage metrics

This application uses [SimpleCov](https://github.com/simplecov-ruby/simplecov) for test coverage observability. If you are using a debian/ubuntu system, instead of `open coverage/index.html` it's suggested to install something like `xdg-utils`, and run `xdg-open coverage/index.html` to see test coverage metrics. More details contained within the [SimpleCov documentation](https://github.com/simplecov-ruby/simplecov#:~:text=After%20running%20your%20tests%2C%20open%20coverage/index.html%20in%20the%20browser%20of%20your%20choice.%20For%20example%2C%20in%20a%20Mac%20Terminal%2C%20run%20the%20following%20command%20from%20your%20application%27s%20root%20directory%3A).
