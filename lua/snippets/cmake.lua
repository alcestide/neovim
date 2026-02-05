local ls = require("luasnip")
local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s("cmake_init", {
        t("cmake_minimum_required(VERSION "), i(1, "3.10"), t(")"),
        t({"", "project("}), i(2, "project_name"), t(")"),
        t({"", "", "set(CMAKE_CXX_STANDARD "}), i(3, "23"), t(")"),
        t({"", "set(CMAKE_CXX_STANDARD_REQUIRED ON)", ""}),
        t({"", "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)", ""}),
        t({"", "add_executable("}), i(4, "main"), t(" "), i(5, "main.cpp"), t(")"),
    }),
}
