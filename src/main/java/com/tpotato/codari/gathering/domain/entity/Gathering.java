package com.tpotato.codari.gathering.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.time.LocalDateTime;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Gathering extends CommonEntity{
  @Id
  public Long gatheringId;
  public Long userId;
  public String name;
  public String thumbnailUrl;
  public String desc;
  public String preparations;
  public Long attendanceFee;
  public Long deposit;
  public Character type;
  public Character status;

  public LocalDateTime startDatetime;
  public LocalDateTime endDatetime;
  public LocalDateTime applicationDeadlineDatetime;
}
