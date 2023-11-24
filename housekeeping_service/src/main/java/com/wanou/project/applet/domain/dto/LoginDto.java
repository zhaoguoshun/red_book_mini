package com.wanou.project.applet.domain.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author txh
 * @date 2021/8/20 14:57
 */
@Data
public class LoginDto implements Serializable {
    private static final long serialVersionUID = -8347566034901408608L;

    private String code;
}
