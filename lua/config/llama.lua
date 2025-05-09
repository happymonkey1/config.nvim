local g = vim.g

local llama_config = {
    n_predict = 4096,
    n_prefix = 256,
    n_suffix = 256,
    t_max_prompt_ms = 2000,
    ring_n_chunks = 64
}

return llama_config

