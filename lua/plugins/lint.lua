return {
        {
                "stevearc/conform.nvim",
                optional = true,
                opts = {

                        format_on_save = {
                                timeout_ms = 500,
                                lsp_format = "fallback",
                        },
                        formatters_by_ft = {
                                lua = {"stylua"},
                                tf = { "terraform_fmt" },
                                terraform = { "terraform_fmt" },
                                ["terraform-vars"] = { "terraform_fmt" },
                        },
                },
        },
        {
                "mfussenegger/nvim-lint",
                optional = true,
                opts = {
                        linters_by_ft = {
                                tf = { "tflint", "tfsec" },
                                terraform = { "tflint", "tfsec" },
                                ["terraform-vars"] = { "tflint", "tfsec" },
                        },
                },
        },
}
