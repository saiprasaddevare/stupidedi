# frozen_string_literal: true
module Stupidedi
  module Versions
    module FortyTen
      module SegmentDefs
        s = Schema
        e = ElementDefs
        r = ElementReqs

        OID = s::SegmentDef.build(:OID, "Order identification",
          "",
          e::E127 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E324 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E127 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E355 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E380 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E188 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E81  .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E184 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          e::E183 .simple_use(r::Relational, s::RepeatCount.bounded(1)),
          SyntaxNotes::R.build(1, 2),
          SyntaxNotes::C.build(3, 2),
          SyntaxNotes::P.build(4, 5),
          SyntaxNotes::P.build(6, 7),
          SyntaxNotes::P.build(8, 9))
      end
    end
  end
end
