# frozen_string_literal: true
module Stupidedi
  module TransactionSets
    module FortyTen
      module Standards
        b = Builder
        d = Schema
        r = SegmentReqs
        s = SegmentDefs

        SM204 = b.build("SM", "204", "Motor Carrier Load Tender",
          d::TableDef.header("1 - Header",
            s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
            s:: B2.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
            s::B2A.use( 30, r::Mandatory, d::RepeatCount.bounded(1)),
            s::L11.use( 80, r::Optional,  d::RepeatCount.bounded(100)),
            s::G62.use( 90, r::Optional,  d::RepeatCount.bounded(1)),
            s::MS3.use(100, r::Mandatory, d::RepeatCount.bounded(1)),
            s::AT5.use(110, r::Optional,  d::RepeatCount.bounded(6)),
            s::PLD.use(120, r::Optional,  d::RepeatCount.bounded(1)),
            s::LH6.use(125, r::Optional,  d::RepeatCount.bounded(6)),
            s::NTE.use(130, r::Optional,  d::RepeatCount.bounded(10)),

            d::LoopDef.build("0100", d::RepeatCount.bounded(5),
              s:: N1.use(140, r::Optional,  d::RepeatCount.bounded(1)),
              s:: N3.use(160, r::Optional,  d::RepeatCount.bounded(2)),
              s:: N4.use(170, r::Optional,  d::RepeatCount.bounded(1)),
              s::G61.use(190, r::Optional,  d::RepeatCount.bounded(3))),

            d::LoopDef.build("0200", d::RepeatCount.bounded(10),
              s:: N7.use(200, r::Mandatory, d::RepeatCount.bounded(1)),
              s::MEA.use(208, r::Optional,  d::RepeatCount.bounded(1)),
              s:: M7.use(210, r::Optional,  d::RepeatCount.bounded(2)))),

          d::TableDef.detail("2 - Detail",
            d::LoopDef.build("0300", d::RepeatCount.unbounded,
              s:: S5.use(10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::L11.use(20, r::Optional,  d::RepeatCount.bounded(200)),
              s::G62.use(30, r::Optional,  d::RepeatCount.bounded(2)),
              s::AT8.use(40, r::Optional,  d::RepeatCount.bounded(1)),
              s::AT5.use(110, r::Optional, d::RepeatCount.bounded(6)),
              s::PLD.use(120, r::Optional, d::RepeatCount.bounded(1)),
              s::LAD.use(50, r::Optional,  d::RepeatCount.bounded(999)),
              s::NTE.use(65, r::Optional,  d::RepeatCount.bounded(20)),

              d::LoopDef.build("0310", d::RepeatCount.bounded(1),
                s:: N1.use( 70, r::Mandatory, d::RepeatCount.bounded(1)),
                s:: N2.use( 80, r::Mandatory, d::RepeatCount.bounded(1)),
                s:: N3.use( 90, r::Optional,  d::RepeatCount.bounded(2)),
                s:: N4.use(100, r::Optional,  d::RepeatCount.bounded(1)),
                s::G61.use(120, r::Optional,  d::RepeatCount.bounded(3))),

              d::LoopDef.build("0320", d::RepeatCount.bounded(99),
                s:: L5.use(130, r::Optional,  d::RepeatCount.bounded(1)),
                s::AT8.use(135, r::Optional,  d::RepeatCount.bounded(1)),

                d::LoopDef.build("0325", d::RepeatCount.bounded(99),
                  s::G61.use(140, r::Optional,  d::RepeatCount.bounded(1)),
                  s::L11.use(135, r::Optional,  d::RepeatCount.bounded(30)),

                  d::LoopDef.build("0330", d::RepeatCount.bounded(25),
                    s::LH1.use(143, r::Optional,  d::RepeatCount.bounded(1)),
                    s::LH2.use(144, r::Optional,  d::RepeatCount.bounded(4)),
                    s::LH3.use(145, r::Optional,  d::RepeatCount.bounded(10)),
                    s::LFH.use(146, r::Optional,  d::RepeatCount.bounded(20))))),

              d::LoopDef.build("0350", d::RepeatCount.bounded(999),
                s::OID.use(150, r::Optional, d::RepeatCount.bounded(1)),
                s::LAD.use(180, r::Optional, d::RepeatCount.bounded(999)),

                d::LoopDef.build("0360", d::RepeatCount.bounded(99),
                  s:: L5.use(190, r::Optional, d::RepeatCount.bounded(1)),
                  s::AT8.use(195, r::Optional, d::RepeatCount.bounded(1)),

                  d::LoopDef.build("0365", d::RepeatCount.bounded(99),
                    s::G61.use(200, r::Optional, d::RepeatCount.bounded(1)),
                    s::L11.use(201, r::Optional, d::RepeatCount.bounded(5)),

                    d::LoopDef.build("0370", d::RepeatCount.bounded(25),
                      s::LH1.use(203, r::Optional, d::RepeatCount.bounded(1)),
                      s::LH2.use(204, r::Optional, d::RepeatCount.bounded(4)),
                      s::LH3.use(205, r::Optional, d::RepeatCount.bounded(10)),
                      s::LFH.use(206, r::Optional, d::RepeatCount.bounded(20)))))))),

          d::TableDef.summary("Summary",
            s:: L3.use(10, r::Optional,  d::RepeatCount.bounded(1)),
            s:: SE.use(20, r::Mandatory, d::RepeatCount.bounded(1))))

      end
    end
  end
end
