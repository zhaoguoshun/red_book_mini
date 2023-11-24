package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 音乐对象 tb_music
 *
 * @author ruoyi
 * @date 2023-04-01
 */
public class TbMusic extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 音乐名称 */
    @Excel(name = "音乐名称")
    private String name;

    /** 创作人 */
    @Excel(name = "创作人")
    private String artist;

    /** 播放url */
    @Excel(name = "播放url")
    private String url;

    /** 音乐封面 */
    @Excel(name = "音乐封面")
    private String cover;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setArtist(String artist)
    {
        this.artist = artist;
    }

    public String getArtist()
    {
        return artist;
    }
    public void setUrl(String url)
    {
        this.url = url;
    }

    public String getUrl()
    {
        return url;
    }
    public void setCover(String cover)
    {
        this.cover = cover;
    }

    public String getCover()
    {
        return cover;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("artist", getArtist())
            .append("url", getUrl())
            .append("cover", getCover())
            .toString();
    }
}
