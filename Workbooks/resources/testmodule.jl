module OurModule

export module_function

function module_function(n)
	[println(printfn()) for i = 1:n]
	return nothing
end

function printfn()
	println("This is the modules print function")
	return nothing
end

end
