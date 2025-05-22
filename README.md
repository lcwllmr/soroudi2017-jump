# soroudi2017-jump

This repo contains Julia/JuMP re-implementations of the code examples from the textbook

> Soroudi, Alireza. Power system optimization modeling in GAMS. Vol. 78. Switzerland: Springer, 2017. <https://doi.org/10.1007/978-3-319-62350-4>.

## How the repo works

This is mostly a note to myself, so I don't forget my workflow in the future.
All Pluto notebooks are developed locally and then converted to HTML using the following pipeline:

- Build and launch the dev container so you don't need to install Julia locally. From the repo root:
  ```
  docker build -t s17jmp .
  docker run -d -v .:/workspace -p 1234:1234 --name s17jmp s17jmp:latest
  ```
  and open the browser at <http://localhost:1234> to access Pluto's UI and work with the notebooks.
- To publish the current state to the web, manually trigger the GitHub action to convert all notebooks and this readme to HTML and publish to <https://lcwllmr.github.io/soroudi2017-jump>.
