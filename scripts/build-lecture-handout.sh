#!/bin/sh

set -eu

if [ "$#" -ne 1 ]; then
  echo "用法：$0 Lxx" >&2
  exit 1
fi

lecture=$1
case "$lecture" in
  L[0-9][0-9]) ;;
  *)
    echo "错误：讲次名称必须采用 Lxx 格式，例如 L02。" >&2
    exit 1
    ;;
esac

repo_root=$(git rev-parse --show-toplevel)
lectures_dir="$repo_root/Lectures"

if [ ! -f "$lectures_dir/$lecture.tex" ]; then
  echo "错误：未找到 Lectures/$lecture.tex。" >&2
  exit 1
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "错误：未找到 xelatex，请先安装 TeX 发行版。" >&2
  exit 1
fi

echo "正在编译单讲 Handout：Lectures/$lecture.pdf"
cd "$lectures_dir"
xelatex -jobname="$lecture" -interaction=nonstopmode -halt-on-error \
  "\\PassOptionsToClass{handout}{beamer}\\input{$lecture.tex}"
xelatex -jobname="$lecture" -interaction=nonstopmode -halt-on-error \
  "\\PassOptionsToClass{handout}{beamer}\\input{$lecture.tex}"

if [ ! -s "$lectures_dir/$lecture.pdf" ]; then
  echo "错误：未生成 Lectures/$lecture.pdf。" >&2
  exit 1
fi

echo "单讲 Handout 编译完成：Lectures/$lecture.pdf"
