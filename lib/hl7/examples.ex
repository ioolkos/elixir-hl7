defmodule HL7.Examples do
  @moduledoc """
  Functions to provide sample HL7 data which can be used to explore the API.
  """

  @doc """
  Returns a sample HL7 2.5 message from [Wikipedia's HL7 article](https://en.wikipedia.org/wiki/Health_Level_7#Version_2_messaging)
  """
  def wikipedia_sample_hl7() do
    """
    MSH|^~\\&|MegaReg|XYZHospC|SuperOE|XYZImgCtr|20060529090131-0500||ADT^A01^ADT_A01|01052901|P|2.5
    EVN||200605290901||||200605290900
    PID|||56782445^^^UAReg^PI||KLEINSAMPLE^BARRY^Q^JR||19620910|M||2028-9^^HL70005^RA99113^^XYZ|260 GOODWIN CREST DRIVE^^BIRMINGHAM^AL^35209^^M~NICKELL’S PICKLES^10000 W 100TH AVE^BIRMINGHAM^AL^35200^^O|||||||0105I30001^^^99DEF^AN
    PV1||I|W^389^1^UABH^^^^3||||12345^MORGAN^REX^J^^^MD^0010^UAMC^L||67890^GRAINGER^LUCY^X^^^MD^0010^UAMC^L|MED|||||A0||13579^POTTER^SHERMAN^T^^^MD^0010^UAMC^L|||||||||||||||||||||||||||200605290900
    OBX|1|N^K&M|^Body Height||1.80|m^Meter^ISO+|||||F
    OBX|2|NM|^Body Weight||79|kg^Kilogram^ISO+|||||F
    AL1|1||^ASPIRIN
    DG1|1||786.50^CHEST PAIN, UNSPECIFIED^I9|||A
    """
    |> String.replace("\n", "\r")
  end

  def nist_immunization_hl7() do
    """
    MSH|^~\&|Test EHR Application|X68||NIST Test Iz Reg|201207010822||VXU^V04^VXU_V04|NIST-IZ-020.00|P|2.5.1|||AL|ER
    PID|1||252430^^^MAA^MR||Curry^Qiang^Trystan^^^^L||20090819|M
    ORC|RE||IZ-783278^NDA|||||||||57422^RADON^NICHOLAS^^^^^^NDA^L
    RXA|0|1|20120814||140^Influenza^CVX|0.5|mL^MilliLiter [SI Volume Units]^UCUM||00^New immunization record^NIP001||||||W1356FE|20121214|SKB^GlaxoSmithKline^MVX|||CP|A
    RXR|C28161^Intramuscular^NCIT|RA^Right Arm^HL70163
    OBX|1|CE|64994-7^Vaccine funding program eligibility category^LN|1|V03^VFC eligible - Uninsured^HL70064||||||F|||20120701|||VXC40^Eligibility captured at the immunization level^CDCPHINVS
    OBX|2|CE|30956-7^vaccine type^LN|2|88^Influenza, unspecified formulation^CVX||||||F
    OBX|3|TS|29768-9^Date vaccine information statement published^LN|2|20120702||||||F
    OBX|4|TS|29769-7^Date vaccine information statement presented^LN|2|20120814||||||F
    ORC|RE||IZ-783276^NDA
    RXA|0|1|20110214||133^PCV 13^CVX|999|||01^Historical information - source unspecified^NIP001
    ORC|RE||IZ-783282^NDA|||||||||57422^RADON^NICHOLAS^^^^^^NDA^L
    RXA|0|1|20120814||110^DTaP-Hep B-IPV^CVX|0.5|mL^MilliLiter [SI Volume Units]^UCUM||00^New immunization record^NIP001||||||78HH34I|20121214|SKB^GlaxoSmithKline^MVX|||CP|A
    RXR|C28161^Intramuscular^NCIT|LA^Left Arm^HL70163
    OBX|1|CE|64994-7^Vaccine funding program eligibility category^LN|1|V03^VFC eligible - Uninsured^HL70064||||||F|||20120701|||VXC40^Eligibility captured at the immunization level^CDCPHINVS
    OBX|2|CE|30956-7^vaccine type^LN|2|107^DTaP^CVX||||||F
    OBX|3|TS|29768-9^Date vaccine information statement published^LN|2|20070517||||||F
    OBX|4|TS|29769-7^Date vaccine information statement presented^LN|2|20120814||||||F
    OBX|5|CE|30956-7^vaccine type^LN|3|89^Polio^CVX||||||F
    OBX|6|TS|29768-9^Date vaccine information statement published^LN|3|20111108||||||F
    OBX|7|TS|29769-7^Date vaccine information statement presented^LN|3|20120814||||||F
    OBX|8|CE|30956-7^vaccine type^LN|4|45^Hep B, unspecified formulation^CVX||||||F
    OBX|9|TS|29768-9^Date vaccine information statement published^LN|4|20120202||||||F
    OBX|10|TS|29769-7^Date vaccine information statement presented^LN|4|20120814||||||F
    """
    |> String.replace("\n", "\r")
  end


  def t2 do
    """
    MSH|^~\&|Test EHR Application|X68||NIST Test Iz Reg|201207010822||VXU^V04^VXU_V04|NIST-IZ-020.00|P|2.5.1|||AL|ER
    RXA|0|1|20120814||110^DTaP-Hep B-IPV^CVX|0.5|mL^MilliLiter [SI Volume Units]^UCUM||00^New immunization record^NIP001||||||78HH34I|20121214|SKB^GlaxoSmithKline^MVX|||CP|A
    RXR|C28161^Intramuscular^NCIT|LA^Left Arm^HL70163
    OBX|10|TS|29769-7^Date vaccine information statement presented^LN|4|20120814||||||F
    OBX|55|CE|30956-7^vaccine type^LN|4|45^Hep B, unspecified formulation^CVX||||||F
    OBX|88|CE|30956-7^vaccine type^LN|4|45^Hep B, unspecified formulation^CVX||||||F
    RXA|0|1|20120814||110^DTaP-Hep B-IPV^CVX|0.5|mL^MilliLiter [SI Volume Units]^UCUM||00^New immunization record^NIP001||||||78HH34I|20121214|SKB^GlaxoSmithKline^MVX|||CP|A
    RXR|C28161^Intramuscular^NCIT|LA^Left Arm^HL70163
    OBX|10|TS|29769-7^Date vaccine information statement presented^LN|4|20120814||||||F
    OBX|55|CE|30956-7^vaccine type^LN|4|45^Hep B, unspecified formulation^CVX||||||F
    OBX|44|CE|30956-7^vaccine type^LN|4|45^Hep B, unspecified formulation^CVX||||||F
    RXR|C28161^Intramuscular^NCIT|LA^Left Arm^HL70163
    """
    |> String.replace("\n", "\r")
  end

  def nist_syndromic_hl7() do
    """
      MSH|^~\&||LakeMichMC^9879874000^NPI|||201204020040||ADT^A03^ADT_A03|NIST-SS-003.32|P|2.5.1|||||||||PH_SS-NoAck^SS Sender^2.16.840.1.114222.4.10.3^ISO
        EVN||201204020030|||||LakeMichMC^9879874000^NPI
        PID|1||33333^^^^MR||^^^^^^~^^^^^^S|||F||2106-3^^CDCREC|^^^^53217^^^^55089|||||||||||2186-5^^CDCREC
        PV1|1||||||||||||||||||33333_001^^^^VN|||||||||||||||||09||||||||201204012130
        DG1|1||0074^Cryptosporidiosis^I9CDX|||F
        DG1|2||27651^Dehydration^I9CDX|||F
        DG1|3||78791^Diarrhea^I9CDX|||F
        OBX|1|CWE|SS003^^PHINQUESTION||261QE0002X^Emergency Care^NUCC||||||F
        OBX|2|NM|21612-7^^LN||45|a^^UCUM|||||F
        OBX|3|CWE|8661-1^^LN||^^^^^^^^Diarrhea, stomach pain, dehydration||||||F
    """
    |> String.replace("\n", "\r")
  end

  def wikipedia_sample_hl7(version) when is_binary(version) do
    wikipedia_sample_hl7()
    |> String.replace("2.5", version, global: false)
  end
end
