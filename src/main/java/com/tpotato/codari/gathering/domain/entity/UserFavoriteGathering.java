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
public class UserFavoriteGathering extends CommonEntity{
  @Id
  public Long userFavoriteGatheringId;
  public Long userId;
  public Long gatheringId;
  public Character useYn;
}
