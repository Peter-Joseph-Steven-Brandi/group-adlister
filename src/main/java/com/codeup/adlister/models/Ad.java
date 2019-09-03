package com.codeup.adlister.models;
import java.util.Date;
public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private Date date;
    private int blocksId;
    private String block;
//    private int categoriesId;

    public Ad() {

    }


    public Ad(long id, long userId, String title, String description, Date date, int blocksId, String block) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date = date;
        this.blocksId = blocksId;
        this.block = block;
//        this.categoriesId = categoriesId;
    }

    public Ad(long id, long userId, String title, String description, Date date, int blocksId) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date = date;
        this.blocksId = blocksId;
    }
  
    public Ad(long userId, String title, String description, int blocksId) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.blocksId = blocksId;
    }

    public Ad(long userId, String title, String description, int blocksId, String block) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.blocksId= blocksId;
        this.block= block;
    }

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public java.sql.Date getDate() {
        return (java.sql.Date) date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public int getBlocksId() {
        return blocksId;
    }
    public void setBlocksId(int blocksId) {
        this.blocksId = blocksId;
    }

    public String getBlock() {
        return block;
    }

    public void setBlock(String block) {
        this.block = block;
    }
}
