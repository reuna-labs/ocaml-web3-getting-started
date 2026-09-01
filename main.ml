let () =
  let profile = Cosmos.Types.Profile.cosmos_hub in
  let chain_id = Cosmos.Types.Profile.chain_id profile in
  Printf.printf "OCaml Web3 packages are linked. Cosmos example chain: %s\n"
    (Cosmos.Types.Chain_id.to_string chain_id)
