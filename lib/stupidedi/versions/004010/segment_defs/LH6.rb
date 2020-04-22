#
# YAGNITech CONFIDENTIAL
# ______________________
#
# [2019] YAGNITech Solutions Pvt. Ltd.
# All Rights Reserved.
# NOTES
#   Version:        0.1
#   Creation Date:  Monday, April 20th 2020, 11:20:42 pm
#   File: LH6.rb
#   Copyright (c) 2020 YAGNITech Solutions Pvt. Ltd
#
# LINK
#   https://yagnitech.com/
#
# NOTICE
# All information contained herein is, and remains
# the property of YAGNITech Solutions Pvt. Ltd.
# The intellectual and technical concepts contained
# herein are proprietary to YAGNITech Solutions Pvt. Ltd.
# and its partners and may be covered by U.S. and Foreign Patents,
# patents in process, and are protected by trade secret or copyright law.
# Dissemination of this information or reproduction of this material
# is strictly forbidden unless prior written permission is obtained
# from YAGNITech Solutions Pvt. Ltd.
#

# frozen_string_literal: true
module Stupidedi
  module Versions
    module FortyTen
      module SegmentDefs
        s = Schema
        e = ElementDefs
        r = ElementReqs

        LH6 = s::SegmentDef.build(:LH6, "Hazardous Certification",
          "To specify the name of the person certifying that the shipment complies
          with the regulations and/or the actual certification ",
          e::E93 .simple_use(r::Optional,  s::RepeatCount.bounded(1)),
          e::E272 .simple_use(r::Optional,  s::RepeatCount.bounded(1)),
          e::E273 .simple_use(r::Optional,  s::RepeatCount.bounded(1)),
          e::E273 .simple_use(r::Optional,  s::RepeatCount.bounded(1)))
      end
    end
  end
end
