
module Redk::Smdr::Matcher::Extended
  def self.level_1
    {
      long_call: [0,0],
      date: [1,5],
      start_time: [7,12],
      duration_of_call: [14,23],
      calling_party: [25,31],
      attendant: [32,32],
      time_to_answer: [33,36],
      digits_dialed_on_the_trunk: [38,63,"58"],
      meter_pulses: [null,63],
      call_completion_status: [64,64],
      speed_call_or_call_forward_flags: [65,65],
      called_party: [66,72],
      ldn_called: [74,80],
      transfer_conference_call: [81,81],
      third_party: [83,89],
      account_code: [91,102],
      route_optimization_flag: [103,103],
      system_identifier: [104,106],
      mlpp_precedence_level: [108,108],
      ani: [110,129],
      dnis: [131,140],
      suite_identifier: [142,148],
      call_identifier: [150,157],
      call_sequence_identifier: [159,159],
      associated_call_identifier: [161,168],
    }
  end

  def self.level_2
    {
      long_call: [0,0],
      date: [1,5],
      start_time: [7,15],
      duration_of_call: [17,26],
      calling_party: [28,34],
      attendant: [36,36],
      time_to_answer: [37,39],
      digits_dialed_on_the_trunk: [41,66],
      call_completion_status: [67,67],
      speed_call_or_call_forward_flags: [68,68],
      called_party: [69,75],
      ldn_called: [77,83],
      transfer_conference_call: [84,84],
      third_party: [86,92],
      account_code: [94,105],
      route_optimization_flag: [106,106],
      system_identifier: [107,109],
      mlpp_precedence_level: [111,111],
      ani: [113,132],
      dnis: [134,143],
      suite_identifier: [145,151],
      call_identifier: [153,160],
      call_sequence_identifier: [162,162],
      associated_call_identifier: [164,171],
      tbcttwo_b_channel_transfer_id: [173,179],
      calling_external_hot_desk_user: [180,186],
      called_external_hot_desk_user: [188,194],
      calling_party_location_identifier: [196,200],
      called_party_location_identifier: [202,206]
    }
  end
end
