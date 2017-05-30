# Catpix_Minimagick_HD

Renders images in the terminal.

This project is a "port" from [pazdera's catpix repo](https://github.com/pazdera/catpix). 

The original project is based on RMagick while this one is compatible with MiniMagick. I made this project in hope that MiniMagick would speed up the original gem and some other mini-magick fans will be able to use this awesome feature in their minimagick projects.

I would probably switch over to rmagick for serious projects in the future. I just did not want to invest effort in switching from mini-magick to rmagick in my main app so I think this 1 day work is pretty useful.

## Example

    $ catpix_mini pokemon.gif
    
![Pokemon](http://radek.io/assets/images/posts/catpix/pokemon.png)

## More examples and options

    $ catpix_mini panda.png -c xy
    $ catpix_mini trophy.png -w 0.5 -h 0.5
    $ catpix_mini tux.png -c xy -r high # enforce high resolution

For more examples and APIs please check out [pazdera's catpix repo](https://github.com/pazdera/catpix). 
They should be very similar at this point except that the binary name is changed from `catpix` to `catpix_mini`.

## Performances

MiniMagick is supposed to be lighter and faster since it provides only a thin wrapper around
the ImageMagick command-line toolset. I have done a bit of testing and find that catpix_mini
has upper advantage when rendering large image while catpix is slightly faster for smaller image.


    time catpix ./img/benchmark.jpg  
    48.25s user 0.56s system 87% cpu 55.578 total

    time catpix_mini ./img/benchmark.jpg  
    42.26s user 0.76s system 83% cpu 51.647 total


Note: I have done not many benchmarks, and performance is not super important in my case. All
I need is to be able to include catpix in my powered-by-minimagick project. So please do some
more proper tests and let me know your results.


## Quality

RMagick return pixels' colours in `16-bit` by default while MiniMagick colour is only `8-bit` therefor the
quality at high-res looks slightly better in catpix compared to catpix-mini.

Only slightly because the quality printed out to terminal is not too insanely detailed to begin with.

## Transparency

Due to the performance advantage is not too impressive, I have not invested time to do pixel reading per pixel to detect alpha channel for the image. Therefor transparent images printed out by catpix_mini will be in white-background.

Another disadvantage of mini-magick.

## About Me

AJAX Amsterdamche and Chandler Bing's big fan.
