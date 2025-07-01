# soroudi2017-jump

This repo contains Julia/JuMP re-implementations of the code examples from the textbook

> Soroudi, Alireza. Power system optimization modeling in GAMS. Vol. 78. Switzerland: Springer, 2017. <https://doi.org/10.1007/978-3-319-62350-4>.

This is a personal exercise to get into power systems modeling and become more comfortable with using Julia and JuMP.
I am not implementing all code samples in the book but instead have chosen a path of topics that interest me.
Depending on where you read this, also have a look at the 
[repo](https://github.com/lcwllmr/soroudi2017-jump)
or the 
[website](https://lcwllmr.github.io/soroudi2017-jump).

## Contents

Here is a list of planned/finished topics and how they map to the book sections. 
The links each lead to a rendered web version of the respective notebook.

1. [Thermal unit economic dispatch (ED)](https://lcwllmr.github.io/soroudi2017-jump/01-thermal-unit-economic-dispatch.html): Section 3.1
2. [Thermal unit environmental dispatch & Pareto optimal front approach](https://lcwllmr.github.io/soroudi2017-jump/02-thermal-unit-environmental-dispatch.html): Section 3.2
3. [Cost-based dynamic ED (DED) & ramp rate sensitivity analysis](https://lcwllmr.github.io/soroudi2017-jump/03-dynamic-economic-dispatch.html): Section 4.1 introduction and 4.1.1
4. [Multi-objective cost-emission minimization](https://lcwllmr.github.io/soroudi2017-jump/04-multi-objective-cost-emission-minimization.html): Section 4.1.2
5. [Wind-integrated DED](https://lcwllmr.github.io/soroudi2017-jump/05-wind-integrated-ded.html): Section 4.1.3
6. [Energy storage system (ESS) operation in DED](https://lcwllmr.github.io/soroudi2017-jump/06-energy-storage-in-ded.html): Section 7.2.1
7. `[WIP]` ESS operation in wind-integrated DED: Section 7.2.2

## How the repo works

This is mostly a note to myself, so I don't forget my workflow in the future.
All Pluto notebooks are developed locally and then converted to HTML using the following pipeline:

- Build and launch the dev container so you don't need to install Julia locally. From the repo root:
  ```
  docker build -t s17jmp .
  docker run -d -v .:/workspace -p 1234:1234 --name s17jmp s17jmp:latest
  ```
  and open the browser at <http://localhost:1234> to access Pluto's UI and work with the notebooks.
- After you are happy with the changes, you simply push to `main` and then, if any of the `*.jl` or `README.md` were changed, a GitHub action should be triggered automatically.
  This will export this readme file and all notebooks as HTML pages and publish them to GitHub pages at <https://lcwllmr.github.io/soroudi2017-jump>.
