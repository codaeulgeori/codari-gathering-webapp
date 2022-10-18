package com.tpotato.codari.gathering.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GatheringAddr extends CommonEntity{
  @Id
  Long gatheringAddrId;
  Long gatheringId;

  String firstAddr;
  String secondAddr;
  String thirdAddr;
  String detailAddr;

  String latitude;
  String longitude;
}
