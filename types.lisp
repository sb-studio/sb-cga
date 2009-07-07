;;;; By Nikodemus Siivola <nikodemus@random-state.net>, 2009.
;;;;
;;;; Permission is hereby granted, free of charge, to any person
;;;; obtaining a copy of this software and associated documentation files
;;;; (the "Software"), to deal in the Software without restriction,
;;;; including without limitation the rights to use, copy, modify, merge,
;;;; publish, distribute, sublicense, and/or sell copies of the Software,
;;;; and to permit persons to whom the Software is furnished to do so,
;;;; subject to the following conditions:
;;;;
;;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;;;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
;;;; CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;;;; TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
;;;; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

(in-package :sb-cga)

(deftype vec ()
  "A 4D vector of single floats.

Used by SB-CGA to represent 3D algebraic vectors (with 4th element of 0.0) and
points (with 4th element of 1.0.) Elsewhere in the documentation, where a \"3D
vector\" is referred to, it means a VEC with 4th element of 0.0, and similarly
a \"point\" refers to a VEC with 4th element of 1.0.

Vector operations operate on VECs as if they were 4D algebraic vectors, not as
homogenous 3D vectors. However, as long as the operations themselves make
sense, the result are consistent with them being homogenous vectors: addition
of two 3D algebraic vectors produces a third one, adding an algebraic vector
to a point produces a point, etc."
  `(simple-array single-float (4)))

;;; MATRIX TYPE, PREDICATES, and CONSTRUCTORS

(deftype matrix ()
  "4x4 matrix of single floats, represented as a one-dimensional vector stored
in column-major order."
  `(simple-array float (16)))