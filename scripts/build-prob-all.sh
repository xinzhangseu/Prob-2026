#!/bin/sh

set -eu

repo_root=$(git rev-parse --show-toplevel)
lectures_dir="$repo_root/Lectures"

if ! command -v xelatex >/dev/null 2>&1; then
  echo "错误：未找到 xelatex，请先安装 TeX 发行版。" >&2
  exit 1
fi

echo "正在重新编译完全版 Handout：Lectures/Prob-All.pdf"
cd "$lectures_dir"
xelatex -jobname=Prob-All -interaction=nonstopmode -halt-on-error \
  '\PassOptionsToClass{handout}{beamer}\input{Prob-All.tex}'
xelatex -jobname=Prob-All -interaction=nonstopmode -halt-on-error \
  '\PassOptionsToClass{handout}{beamer}\input{Prob-All.tex}'

if [ ! -s "$lectures_dir/Prob-All.pdf" ]; then
  echo "错误：未生成 Lectures/Prob-All.pdf。" >&2
  exit 1
fi

echo "完全版 Handout 编译完成。"
