package firechip.chip

import firrtl.options.{StageMain}
import chipyard.stage.ChipyardStage

object Generator extends StageMain(new ChipyardStage)
