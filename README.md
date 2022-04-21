# Cryptopals (in LiveBook!)

## Introduction

Ah... [cryptopals](https://cryptopals.com/)! See this [comment](https://news.ycombinator.com/item?id=23392365) by tptacek for a rundown of their history. Hard to believe these have been kicking around for 10+ years and I'm only now taking a serious crack at them.

> Bleichenbacher aside, though, really what you're seeing is a snapshot of *au courant* crypto attacks from 2010. Away from the libsodium world we live in now, CBC and unauthenticated encryption were quite common, and you still had to convince developers to fix them.

I suspect Elixir/LiveBook is a **killer** combination for doing cryptopals in, and this is my attempt to prove this to myself.

Why do I think this?

1. [LiveBook](https://livebook.dev/) is a joy to work with! You can get a feel for what's possible by watching Jose Valim's [Advent of Code livestreams](https://www.twitch.tv/josevalim/videos). It's what made me want to take on a project like this.
2. [Binary pattern matching](https://hexdocs.pm/elixir/1.13/Kernel.SpecialForms.html#%3C%3C%3E%3E/1). The `<<>>` special form is extrememly powerful, and a lot of the complexity of the bit/byte fiddling crypto attacks require becomes extremely elegant with it.
3. [Erlang's crypto library](https://www.erlang.org/doc/man/crypto.html). Erlang's crypto library is old and has a lot of warts, but for this purpose they are features (see comment above).
4. Bignums by default.

Hopefully, I'll learn some crypto engineering along the way.

## Table of Contents

* [Set 1: Basics](./set1.livemd) 
    
    [![Run in Livebook](https://livebook.dev/badge/v1/gray.svg)](https://livebook.dev/run?url=https%3A%2F%2Fgithub.com%2Fmveytsman%2Fcryptopals%2Fblob%2Fmain%2Fset1.livemd)
* [Set 2: Block crypto](./set2.livemd)

    [![Run in Livebook](https://livebook.dev/badge/v1/gray.svg)](https://livebook.dev/run?url=https%3A%2F%2Fgithub.com%2Fmveytsman%2Fcryptopals%2Fblob%2Fmain%2Fset2.livemd)
* [Set 3: Block & stream crypto](./set3.livemd)

     [![Run in Livebook](https://livebook.dev/badge/v1/gray.svg)](https://livebook.dev/run?url=https%3A%2F%2Fgithub.com%2Fmveytsman%2Fcryptopals%2Fblob%2Fmain%2Fset3.livemd)
