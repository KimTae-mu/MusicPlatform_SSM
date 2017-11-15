package com.msic.service;

import com.msic.pojo.Music;

public interface MsicService {
    public float[][] MakeRecom_matrix();

    Music selectMsicById(Integer id);
}
