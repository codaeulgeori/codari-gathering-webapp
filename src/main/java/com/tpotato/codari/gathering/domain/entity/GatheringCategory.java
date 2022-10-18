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
public class GatheringCategory {
  @Id
  public Long gatheringCategoryId;
  public Long gatheringCategoryMetaId;
  public Long gatheringId;
}
