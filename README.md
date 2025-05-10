![CHIPYARD](https://github.com/ucb-bar/chipyard/raw/main/docs/_static/images/chipyard-logo-full.png)


## Hacks / Commands

To generate `FireSim` testharness CHIRRTL file, run:

```bash
cd  sims/vcs
make launch-sbt
runMain firechip.chip.Generator --target-dir /scratch/joonho.whangbo/coding/chipyard-fame5/sims/vcs/generated-src/firechip.chip.FireSim.FireSimRocketConfig --name firechip.chip.FireSim.FireSimRocketConfig --top-module firechip.chip.FireSim --legacy-configs firechip.chip:FireSimRocketConfig
```

