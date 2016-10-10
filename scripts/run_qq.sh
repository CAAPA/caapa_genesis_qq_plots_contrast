#!/bin/bash

#cat draw_qq.R | R --vanilla --args ../data/input/genesis T ../data/output/balanced_genesis_common.png \
#                  GRAAD CAG SAGE GALA

cat draw_qq.R | R --vanilla --args ../data/input/genesis F ../data/output/balanced_genesis_rare.png \
                  GRAAD CAG SAGE GALA

cat draw_qq.R | R --vanilla --args ../data/input/genesis T ../data/output/unbalanced_genesis_common.png \
                  BRIDGE ARIC JHS SARP

cat draw_qq.R | R --vanilla --args ../data/input/genesis F ../data/output/unbalanced_genesis_rare.png \
                  BRIDGE ARIC JHS SARP

cat draw_qq.R | R --vanilla --args ../data/input/emmax F ../data/output/balanced_emmax_rare.png \
                  GRAAD CAG SAGE GALA

cat draw_qq.R | R --vanilla --args ../data/input/plink F ../data/output/unbalanced_plink_rare.png \
                  BRIDGE ARIC JHS SARP
