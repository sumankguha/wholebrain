% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stitchtiles.R
\name{stitch}
\alias{stitch}
\title{Stitch image using grid layout}
\usage{
stitch(input, stitched.image.name = "stitched_{default.folder}.tif",
  type = "snake.by.row", order = "left.&.up", output.folder = "../",
  tilesize = 2048, overlap = 0.1, dim = NULL, show.image = FALSE,
  micromanager = TRUE, verbose = TRUE, brightness = 30,
  contrast = 3, rotate = 0, feature.matching = FALSE)
}
\arguments{
\item{input}{input a character vector consisting of the full path name to 16-bit raw tif image files. If length(input)==1 then its a folder and it will get tiffs inside.}

\item{stitched.image.name}{filename of the stitched output, default is the directory where the tiles are situated with the added prefix stitched_}

\item{type}{type of motorized microscope stage. Will define the order of acquisition. Arguments are either row.by.row or default snake.by.row.}

\item{order}{the order each tile is acquired. Default is left.&.up which starts from bottom left corner and moves up. Other options include right.&.up, left.&.down and right.&.down.}

\item{tilesize}{an integer value which gives the length of the side of the tiles in pixels, default is 2048 pixels.}

\item{overlap}{either  a real-valued numbe ron the unit interval [0,1] designating the proportion of overlap or an integer number which gives the border thickness of the overlap.}

\item{show.image}{a boolean value, if true the stitched image will be displayed in a display window. Default is false.}

\item{micromanager}{micromanager defines proportion, or rathe rpercentage, overlap as the thickness of the overlapping borderr ther than proportion of overlapping area. In practise this will only double the border thickness, i.e. 0.1 becomes 0.2 overlap. Default is true.}

\item{verbose}{boolean value. If true diagnostic output is written to the R console. Deafult is true.}

\item{brightness}{brightness value, default is 30.}

\item{contrast}{a real-valued number which gives the contrast 1 means no contrast change >1 increase <1 decerase. Default is increase of contrast with a value of 3.0.}

\item{feature.matching}{a boolean value. If true the tiles are assumed to be non-regularly spaced and therefore feature matching between the tiles will be used. This is much more computationally costly but can generate more accurate results. Default is FALSE.}

\item{outputfolder}{name of output folder to save the image in. Default is ../ which means a directory will be created (if not allready there) in the parent directory to where the tiles are placed. Alternative is either ./ which will create output folder in the current directory in which the tiles are placed. The user might also provide the full system path to an already existing directory.}
}
\description{
Stitches multiple image tiles.
}
\examples{
#folder where image tiles are stored
images<-get.images('/Volumes/microscope/animal001/slide001/section001')
#stitch images
stitch(images, type = 'snake.by.row', order = 'left.&.up', tilesize=2048, overlap=0.1, show.image=TRUE)
}
