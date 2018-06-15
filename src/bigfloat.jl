function triple(::Type{T}, x::BigFloat) where {T<:Base.IEEEFloat}
    prec = precision(BigFloat)
    setprecision(BigFloat, 768)
    hi = T(x)
    md = T(x - hi)
    lo = T(x - hi - md)
    setprecision(BigFloat, prec)
    return hi,md,lo
end

function triple(::Type{T}, x::String) where {T<:Base.IEEEFloat}
    prec = precision(BigFloat)
    setprecision(BigFloat, 768)
    z = parse(BigFloat, x)
    hi = T(z)
    md = T(z - hi)
    lo = T(z - hi - md)
    setprecision(BigFloat, prec)
    return hi,md,lo
end

triple64(x::BigFloat) = triple(Float64, x)
triple32(x::BigFloat) = triple(Float32, x)
triple16(x::BigFloat) = triple(Float16, x)

triple64(x::String) = triple(Float64, x)
triple32(x::String) = triple(Float32, x)
triple16(x::String) = triple(Float16, x)

function triple_inv(::Type{T}, x::BigFloat) where {T<:Base.IEEEFloat}
    prec = precision(BigFloat)
    setprecision(BigFloat, 768)
    x = inv(x)
    hi = T(x)
    md = T(x - hi)
    lo = T(x - hi - md)
    setprecision(BigFloat, prec)
    return hi,md,lo
end

triple64inv(x::BigFloat) = triple_inv(Float64, x)
triple32inv(x::BigFloat) = triple_inv(Float32, x)
triple16inv(x::BigFloat) = triple_inv(Float16, x)
