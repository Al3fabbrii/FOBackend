package com.fo.fo.model.mo;

import java.sql.Time;
import java.sql.Timestamp;

public class IMAGE {
    private String ID_image;
    private String dimension;
    private String extension;
    private Long link;
    private String name;
    private Timestamp date;
    private String event;
    public String getID_image() {return ID_image;}
    public void setID_image(String ID_image){this.ID_image=ID_image;}
    public String getdimension() {return dimension;}
    public void setdimension(String dimension){this.dimension=dimension;}
    public String getextension() {return extension;}
    public void setextension(String extension){this.extension=extension;}
    public Long getlink() {return link;}
    public void setlink(Long link){this.link=link;}
    public String getname() {return name;}
    public void setname(String name){this.name=name;}
    public Timestamp getdate() {return date;}
    public void setdate(Timestamp date){this.date=date;}
    public String getevent() {return event;}
    public void setevent(String event){this.event=event;}
}

