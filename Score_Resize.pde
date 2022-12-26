class Score_Resize{
    void score_resize()
          {
            //textSize(36);
            //print("score ",score,"\n");
            resize++;//counter            
            if (resize==5)
            {
               //dict["height_pic"]=dict["height_pic"]+25
                player_info.put("height_pic",player_info.get("height_pic")+25);
                player_info.put("width_pic",player_info.get("width_pic")+25);
                resize=0;
            }
        }

}
