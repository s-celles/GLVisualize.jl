module GLVisualize

using GLFW
using GLWindow 
using GLAbstraction
using ModernGL
using FixedSizeArrays
using GeometryTypes
using ColorTypes
using Reactive
using Quaternions
using Compat
using FixedPointNumbers
using ImageIO
using FileIO
using MeshIO
using Meshes
using AbstractGPUArray
using Packing
using FreeType.FreeTypeAbstraction

FreeTypeAbstraction.init()

import Base: merge, convert, show



include("meshutil.jl")

const sourcedir = Pkg.dir("GLVisualize", "src")
const shaderdir = joinpath(sourcedir, "shader")


include(joinpath(     sourcedir, "utils.jl"))
include(joinpath(     sourcedir, "boundingbox.jl"))
export loop
export bounce

include(joinpath(     sourcedir, "types.jl"))
include_all(joinpath( sourcedir, "display"))


include(joinpath(     sourcedir, 	"visualize_interface.jl"))
export view
export visualize    # Visualize an object


include(joinpath("texture_atlas", 	"texture_atlas.jl"))
export Sprite
export GLSprite
export SpriteStyle
export GLSpriteStyle

include(joinpath(     sourcedir, "color.jl"))
include_all(joinpath( sourcedir, "share"))
include_all(joinpath( sourcedir, "edit"))
include_all(joinpath( sourcedir, "visualize"))
include(joinpath( sourcedir, "visualize", "text", "utils.jl"))

include(joinpath(     sourcedir, "edit_interface.jl"))

export renderloop   # starts the renderloop
export edit         # Edit an object


end # module
