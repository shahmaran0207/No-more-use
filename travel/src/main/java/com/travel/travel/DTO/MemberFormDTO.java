package com.travel.travel.DTO;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberFormDTO {
    private String name;
    private String email;
    private String password;
    private String address;
}