using LinearAlgebra

# convert the Kronecker product into an operator instead of a function
⊗ = kron

# replace small numbers by zero to
sparsefy(m) = round.(m; digits=2)

# visualise in terms of 0s and 1s
roundint(m) = round.(Int,m)

# avoid hide rows and columns specially in complex matrices
fulldisplay(x) = show(IOContext(stdout, :limit=>false), MIME"text/plain"(), x)

# some gates combinations differ from the standard implementation only by a global phase
# in order to guarantee we have the right gate we can add the extra phase manually.
global_phase(θ) = exp(im * θ)