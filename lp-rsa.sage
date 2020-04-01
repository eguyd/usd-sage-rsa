sage: # Generate Large Primes for p and q using next_prime(randint(10^20, 10^25)) for each
sage: p = next_prime(randint(10^20, 10^25))
sage: q = next_prime(randint(10^20, 10^25))
sage: # Perform Primality Test
sage: is_prime(p)
True
sage: is_prime(q)
True
sage: # Calculate n for n = p * q ; n
sage: n = p * q ; n
15820853065807440614987840378033143678205479311749
sage: # Calculate phi(n)
sage: phi = (p-1)*(q-1); phi
15820853065807440614987832418791806789911234220064
sage: # Calculate euler_phi(n)
sage: e = ZZ.random_element(euler_phi(n))
sage: while gcd(e, euler_phi(n))!= 1:
....:     e = ZZ.random_element(euler_phi(n))
....:
sage: e # random
14814461416368226585562397982408333467225635506919
sage: e < n
True
sage: # Calculate d using inverse_mod(e, euler_phi(n))
sage: d = inverse_mod(e, euler_phi(n)) ; d
8408782620322370540722455932097310730818326705239
sage: print(p)
3851060958968745202432013
sage: print(q)
4108180377919549042659673
sage: print(n)
15820853065807440614987840378033143678205479311749
sage: print(e)
14814461416368226585562397982408333467225635506919
sage: print(d)
8408782620322370540722455932097310730818326705239
sage: # Print Public Key (n, e)
sage: print(n,e)
15820853065807440614987840378033143678205479311749 14814461416368226585562397982408333467225635506919
sage: # Print Private Key (n,d)
sage: print(n,d)
15820853065807440614987840378033143678205479311749 8408782620322370540722455932097310730818326705239
sage: m = "HELLOWORLD"
sage: m =[ord(x) for x in m]; m
[72, 69, 76, 76, 79, 87, 79, 82, 76, 68]
sage: m = ZZ(list(reversed(m)), 100) ; m
72697676798779827668
sage: # Generate Ciphertext c usind power_mod(m,e,n)
sage: c = power_mod(m,e,n) ; c
14159869687581327989822271161920006320262699113725
sage: # Generate plaintext using decrypt function power_mod(c, d, n)
sage: ptext = power_mod(c, d, n); ptext
72697676798779827668

