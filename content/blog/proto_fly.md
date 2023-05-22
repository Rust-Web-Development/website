+++
title = "Deploying a TCP server on fly.io "
date = "2023-04-20"
draft = true
+++

The hardest part of this article was naming it. See, I wanted to solve the [protohacker challenges](https://protohackers.com) in Rust. The first few were rather simple (as intended), but offered enough freedom so that you could design and re-design your servers for hours or even days, experiment with different crates or don't use any at all.

Why challenges like that are great:

1. You read the problem statement and have to understand it.
2. Then you need to find a way of implementing them, hence practicing Rust and dive into topics you never touched before.
3. When testing locally, you need to think: How should I test this? How can I send a TCP request to my local server?
4. Once everything behaves like you expected, you have to provide an IP address and port to the protohackers website so it can ran its tests. So, do you deploy it somehwere, or do you run a tunnel locally to expose your server to the public?
5. [`ngkrok`](https://ngrok.com) doesn't work for some reason with protohackers.
6. So, what free services are out there to deploy your Rust code?
7. [`fly.io`](https://fly.io) comes to mind, so let's try this out.
8. Oh, I need to write a Docker file, and a config file for it to work.
9. After deploying it, nothing worked. Requests timed out.
10. Is the port correctly exposed?
11. Is the IP address even reachable? Ah no, the docs are outdated. I have to pay for a unique IPv4 address (IPv6 doesn't work yet with protohackers).
12. After paying for the IPv4 address, the server worked, hurray!
