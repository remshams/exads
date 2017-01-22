[![Travis CI build status](https://api.travis-ci.org/remshams/exads.svg?branch=development)](https://travis-ci.org/remshams/exads)
[![Inch CI docs status](http://inch-ci.org/github/remshams/exads.svg)](http://inch-ci.org/github/remshams/exads)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/remshams/exads.svg)](https://beta.hexfaktor.org/github/remshams/exads)

# Exads

*Algorithms and Data Structures Collection in Elixir*

This is a library with a collection of some of the most used and well known
algorithms and data structures. 

Find the algorithms inside Exads.Algos and data structures inside 
Exads.DataStructures

## Installation

  1. Add exads to your list of dependencies in mix.exs:

        def deps do
          [{:exads, "~> 0.0.1"}]
        end

  2. Ensure exads is started before your application:

        def application do
          [applications: [:exads]]
        end

## TODO

### Data Structures
+ [x] Stack
+ [x] Queue
+ [x] Priority Queue
+ [ ] Double-ended Queue
+ [x] Binary Search Tree (implemented with Map)
+ [ ] Binary Search Tree (implemented with Tuple)
+ [ ] Tree
+ [ ] Binary Tree
+ [ ] Red Black Tree
+ [ ] Directed Graph
+ [ ] Undirected Graph
+ [ ] Bitmap
+ [ ] Lookup Table


### Algorithms
+ [ ] Binary Search
+ [x] Breadth-First Search for Binary Search Tree
+ [x] Depth-First Search for Binary Search Tree
+ [ ] Breadth-First Search for Graphs
+ [ ] Depth-First Search for Graphs
+ [ ] Brute-Force Search
