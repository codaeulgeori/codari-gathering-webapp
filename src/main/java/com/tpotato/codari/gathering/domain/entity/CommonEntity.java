package com.tpotato.codari.gathering.domain.entity;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CommonEntity {
  public LocalDateTime createdDatetime;
  public LocalDateTime updateDatetime;
}
