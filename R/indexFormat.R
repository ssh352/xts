#
#   xts: eXtensible time-series 
#
#   Copyright (C) 2008  Jeffrey A. Ryan jeff.a.ryan @ gmail.com
#
#   Contributions from Joshua M. Ulrich
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.


`indexFormat` <-
function(x) {
  UseMethod('indexFormat')
}

`indexFormat<-` <-
function(x, value) {
  UseMethod('indexFormat<-')
}

`indexFormat.default` <-
function(x) {
  attr(x, '.indexFORMAT')
}

`indexFormat<-.default` <-
function(x, value) {
  attr(x, '.indexFORMAT') <- value
  x
}

`indexFormat.xts` <-
function(x) {
  attr(x, '.indexFORMAT')
}

`indexFormat<-.xts` <-
function(x, value) {
  
  if(!is.character(value) && !is.null(value))
    stop('must provide valid POSIX formatting string')

  attr(x, '.indexFORMAT') <- value
  x
}
