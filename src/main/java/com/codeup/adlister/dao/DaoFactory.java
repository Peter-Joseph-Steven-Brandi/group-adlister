package com.codeup.adlister.dao;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static UserAds userAdsDao;
    private static Categories categoriesDao;
    private static Blocks blocksDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Categories getCategoriesDao(){
        if(categoriesDao == null){
            categoriesDao = new MySQLCategoriesDao(config);
        }
        return categoriesDao;
    }

    public static Blocks getBlocksDao(){
        if(blocksDao == null){
            blocksDao = new MySQLBlocksDao(config);
        }
        return blocksDao;
    }
}
