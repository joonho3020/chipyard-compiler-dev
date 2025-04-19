#!/bin/bash

set -ex

make clean

make run-binary-debug CONFIG=RocketConfig BINARY=../../tests/hello.riscv USE_VCD=1
mv output/chipyard.harness.TestHarness.RocketConfig/hello.vcd hello.golden.vcd

make run-binary-debug CONFIG=RocketConfig BINARY=../../tests/hello.riscv USE_VCD=1 USE_CUSTOM_FIRRTL=1
mv output/chipyard.harness.TestHarness.RocketConfig/hello.vcd hello.impl.vcd

vcddiff \
  --vcd1 hello.golden.vcd \
  --vcd2 hello.impl.vcd \
  --clock TestDriver.testHarness.chiptop0.system.auto_chipyard_prcictrl_domain_reset_setter_clock_in_member_allClocks_uncore_clock \
  --reset TestDriver.testHarness.chiptop0.system.auto_chipyard_prcictrl_domain_reset_setter_clock_in_member_allClocks_uncore_reset \
  --scope TestDriver.testHarness.chiptop0.system | tee DEBUG
