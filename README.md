# PRHVector
## A featureful vector class for Objective-C

[![Image: Status of most recent build and test attempt.](https://travis-ci.org/boredzo/PRHVector.png?branch=master)](https://travis-ci.org/boredzo/PRHVector)
[![Image: Test code coverage percentage.](https://coveralls.io/repos/boredzo/PRHVector/badge.png?branch=master)](https://coveralls.io/r/boredzo/PRHVector?branch=master)

This is reusable source code for a class of object representing a vector, in the mathematical (trigonometry/linear algebra) sense.

### Features

- Conversion between Cartesian and polar coordinates
- Conversion to slope
- Quadrant testing (is this vector in the rightward, upward, leftward, or downward quadrant?) (TBD)
- Multiplication with other vectors (TBD)
- Multiplication with CGAffineTransforms and NSAffineTransforms (TBD)

**Pull requests are welcome!** If you need any of the above that isn't implemented, or any other feature that makes sense to have in a vector class, please fork the project, write some tests, write the implementation, and send a pull request.

### Limitations

Currently, PRHVector only supports 2D vectors. One day, it will be refactored into a class cluster that supports vectors in 1D (if that's useful at all), 2D, 3D, 4D, and maybe even arbitrary dimensionalities.
