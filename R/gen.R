if(!isGeneric('color<-'))
   setGeneric('color<-', function(x, ..., value) standardGeneric('color<-'))
if(!isGeneric('shape<-'))
   setGeneric('shape<-', function(x, ..., value) standardGeneric('shape<-'))
if(!isGeneric('shapedetail<-'))
   setGeneric('shapedetail<-', function(x, ..., value) standardGeneric('shapedetail<-'))
if(!isGeneric('label<-'))
   setGeneric('label<-', function(x, ..., value) standardGeneric('label<-'))
if(!isGeneric('size<-'))
   setGeneric('size<-', function(x, ..., value) standardGeneric('size<-'))
if(!isGeneric('fontcolor<-'))
   setGeneric('fontcolor<-', function(x, ..., value) standardGeneric('fontcolor<-'))
if(!isGeneric('fontfamily<-'))
   setGeneric('fontfamily<-', function(x, ..., value) standardGeneric('fontfamily<-'))
if(!isGeneric('fontsize<-'))
   setGeneric('fontsize<-', function(x, ..., value) standardGeneric('fontsize<-'))
if(!isGeneric('visible<-'))
   setGeneric('visible<-', function(x, ..., value) standardGeneric('visible<-'))
if(!isGeneric('arrow<-'))
   setGeneric('arrow<-', function(x, ..., value) standardGeneric('arrow<-'))
if(!isGeneric('arrow_position<-'))
   setGeneric('arrow_position<-', function(x, ..., value) standardGeneric('arrow_position<-'))
if(!isGeneric('arrow_radius<-'))
   setGeneric('arrow_radius<-', function(x, ..., value) standardGeneric('arrow_radius<-'))
if(!isGeneric('arrow_length<-'))
   setGeneric('arrow_length<-', function(x, ..., value) standardGeneric('arrow_length<-'))
if(!isGeneric('arrow_reverse<-'))
   setGeneric('arrow_reverse<-', function(x, ..., value) standardGeneric('arrow_reverse<-'))
if(!isGeneric('width<-'))
   setGeneric('width<-', function(x, ..., value) standardGeneric('width<-'))
if(!isGeneric('stroke<-'))
   setGeneric('stroke<-', function(x, ..., value) standardGeneric('stroke<-'))
if(!isGeneric('showstrain<-'))
   setGeneric('showstrain<-', function(x, ..., value) standardGeneric('showstrain<-'))
if(!isGeneric('oriented<-'))
   setGeneric('oriented<-', function(x, ..., value) standardGeneric('oriented<-'))
if(!isGeneric('strength<-'))
   setGeneric('strength<-', function(x, ..., value) standardGeneric('strength<-'))
if(!isGeneric('spline<-'))
   setGeneric('spline<-', function(x, ..., value) standardGeneric('spline<-'))


setMethod("color<-", "VertexID", function(x, ..., value) {
   setAttributes(x, color = value, ...)
   x
})
setMethod("shape<-", "VertexID", function(x, ..., value) {
   setAttributes(x, shape = value, ...)
   x
})
setMethod("shapedetail<-", "VertexID", function(x, ..., value) {
   setAttributes(x, shapedetail = value, ...)
   x
})
setMethod("label<-", "VertexID", function(x, ..., value) {
   setAttributes(x, label = value, ...)
   x
})
setMethod("size<-", "VertexID", function(x, ..., value) {
   setAttributes(x, size = value, ...)
   x
})
setMethod("fontcolor<-", "VertexID", function(x, ..., value) {
   setAttributes(x, fontcolor = value, ...)
   x
})
setMethod("fontfamily<-", "VertexID", function(x, ..., value) {
   setAttributes(x, fontfamily = value, ...)
   x
})
setMethod("fontsize<-", "VertexID", function(x, ..., value) {
   setAttributes(x, fontsize = value, ...)
   x
})
setMethod("visible<-", "VertexID", function(x, ..., value) {
   setAttributes(x, visible = value, ...)
   x
})
setMethod("arrow<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, arrow = value, ...)
   x
})
setMethod("arrow_position<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, arrow_position = value, ...)
   x
})
setMethod("arrow_radius<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, arrow_radius = value, ...)
   x
})
setMethod("arrow_length<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, arrow_length = value, ...)
   x
})
setMethod("arrow_reverse<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, arrow_reverse = value, ...)
   x
})
setMethod("color<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, color = value, ...)
   x
})
setMethod("label<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, label = value, ...)
   x
})
setMethod("fontcolor<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, fontcolor = value, ...)
   x
})
setMethod("fontfamily<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, fontfamily = value, ...)
   x
})
setMethod("fontsize<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, fontsize = value, ...)
   x
})
setMethod("visible<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, visible = value, ...)
   x
})
setMethod("width<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, width = value, ...)
   x
})
setMethod("stroke<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, stroke = value, ...)
   x
})
setMethod("showstrain<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, showstrain = value, ...)
   x
})
setMethod("oriented<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, oriented = value, ...)
   x
})
setMethod("strength<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, strength = value, ...)
   x
})
setMethod("spline<-", "EdgeID", function(x, ..., value) {
   setAttributes(x, spline = value, ...)
   x
})

