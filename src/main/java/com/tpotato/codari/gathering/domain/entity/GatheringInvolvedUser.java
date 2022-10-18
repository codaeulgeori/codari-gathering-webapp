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
public class GatheringInvolvedUser extends CommonEntity{
  @Id
  public Long gatheringInvolvedUserId;
  public Long gatheringId;
  public Long userId;
  public Character type;
  public Character useYn;
}
