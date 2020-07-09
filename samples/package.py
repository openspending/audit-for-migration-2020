from dataflows import Flow, dump_to_path, load, validate, set_type

import os
import sys

for root, subdirs, files in os.walk("."):

    if (
        "presupuesto" in root
        and not "presupuesto_mexico_200_6744650b" in root
        and not "presupuesto_mexico_fac72ee0" in root
    ):
        for filename in files:
            if ".csv" in filename:
                file_path = os.path.join(root, filename)  # full path

                _ = Flow(
                    load(file_path),
                    set_type("ID_UR", type="any"),  # needed for "presupuesto..."
                    validate(),
                    dump_to_path(root),
                ).process()
