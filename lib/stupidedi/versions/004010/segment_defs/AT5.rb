#
# YAGNITech CONFIDENTIAL
# ______________________
#
# [2019] YAGNITech Solutions Pvt. Ltd.
# All Rights Reserved.
# NOTES
#   Version:        0.1
#   Creation Date:  Monday, April 20th 2020, 11:00:00 pm
#   File: AT5.rb
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

        AT5 = s::SegmentDef.build(:AT5, "To identify Bill of Lading handling and service requirements ",
          e::E152 .simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
          e::E560 .simple_use(r::Optional,  s::RepeatCount.bounded(1)),
          e::E153 .simple_use(r::Optional,  s::RepeatCount.bounded(1)))
      end
    end
  end
end
