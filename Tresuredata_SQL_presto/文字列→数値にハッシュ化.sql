select 
  from_big_endian_64(xxhash64(CAST('asdf' AS varbinary))) as hash
