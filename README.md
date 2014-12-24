Easy RSA encryption/decryption in Elixir
========================================

This module wraps Erlang's `public_key` module, making RSA encryption/decryption a trivial task.

```elixir
# Decode your public and private keys
public_key = RSA.decode_key "-----BEGIN RSA PUBLIC KEY----- ..."
private_key = ...

# Encrypt a string using the public key and decrypt it using the private key
plaintext = "hello world"
cyphertext = plaintext |> RSA.encrypt {:public, public_key}
# << ... encrypted binary data ... >>
# Encode it to base64
encrypted_b64 = :base64.encode_to_string cyphertext
# "... base64 ASCII text ..."

# Decode a base64 encrypted string and decrypt it
cyphertext = :base64.decode encrypted_b64
plaintext = cyphertext |> RSA.decrypt {:private, private_key}
# "hello world"
```
