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
public class GatheringCategoryMeta extends CommonEntity{
  @Id
  public Long gatheringCategoryMetaId;
  public String name;
  public Character type;
}
