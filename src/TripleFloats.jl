module TripleFloats

export TripleF64, TripleF32

struct TripleF64
   value::Tuple{Float64, Float64, Float64}
end

struct TripleF32
   value::Tuple{Float32, Float32, Float32}
end

TripleF64(x::Float64) = TripleF64(x, 0.0, 0.0)
TripleF64(x::Float64, y::Float64) = TripleF64(add_2(x,y)..., 0.0)
TripleF64(x::Float32) = TripleF64(Float64(x), 0.0, 0.0)
TripleF64(x::Float32, y::Float32) = TripleF64(add_2(Float64(x),Float64(y))..., 0.0)
TripleF64(x::Float64, y::Float32) = TripleF64(add_2(x,Float64(y))..., 0.0)
TripleF64(x::Float32, y::Float64) = TripleF64(add_2(Float64(x),y)..., 0.0)

TripleF32(x::Float32) = TripleF32(x, 0.0f0, 0.0f0)
TripleF32(x::Float32, y::Float32) = TripleF64(add_2(x,y)..., 0.0f0)

TripleF64(x::Triple32) = TripleF64(add_3(Float64(x.value[1]),(Float64(x.value[2]),(Float64(x.value[3]))...,)

end # TripleFloats
