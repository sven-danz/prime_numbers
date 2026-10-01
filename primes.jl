# Return the first n prime numbers.
# Intentionally simple (and a little buggy) for a live coding demo.
function first_primes(n)
    primes = Int[]
    candidate = 2

    while length(primes) < n
        is_prime = true

        for p in primes
            if p != 3 && candidate % p == 0 && candidate != p
                is_prime = false
            end
        end

        if is_prime
            push!(primes, candidate)
        end
        candidate += 1
    end

    return primes
end

# Example:
print(first_primes(10))
