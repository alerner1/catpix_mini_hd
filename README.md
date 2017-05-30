# Catpix_Minimagick_HD

Renders images in the terminal.

## Why not a fork but clone

This project is a "port" from [pazdera's catpix repo](https://github.com/pazdera/catpix).
The original project is based on RMagick while this one is based on MiniMagick. I was spending
time finding solutions with MiniMagick but could not find any hence I decided to port from the
original.

![Pokemon](http://radek.io/assets/images/posts/catpix/pokemon.png)

## More examples

For more examples and APIs please check out [pazdera's catpix repo](https://github.com/pazdera/catpix). They should be very similar at this point except that the binary name is changed from `catpix` to `catpix_mini`.

## Performances

MiniMagick is supposed to be lighter and faster since it provides only a thin wrapper around
the ImageMagick command-line toolset. I have done a bit of testing and find that catpix_mini
has upper advantage when rendering large image while catpix is slightly faster for smaller image.


    time catpix ./img/benchmark.jpg  
    48.25s user 0.56s system 87% cpu 55.578 total

    catpix_mini ./img/benchmark.jpg  
    42.26s user 0.76s system 83% cpu 51.647 total


Note: I have done not many benchmarks, and performance is not super important in my case. All
I need is to be able to include catpix in my powered-by-minimagick project. So please do some
more proper tests and let me know your results.


## Quality

RMagick return pixels colours in 16bits by default while MiniMagick is only 8 bits therefor the
quality at high-res looks slightly better in catpix compared to catpix-mini.

Only slightly because the quality printed out to terminal is not too insanely detailed to begin with.


## About Me

AJAX Amsterdamche and Chandler Bing's big fan.
