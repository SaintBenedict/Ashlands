var buffer = argument[ 0 ];
   var msgid = buffer_read( buffer , buffer_u8 );
   switch( msgid ) {
      case 1:
         global.myid = buffer_read( buffer , buffer_u16 );//Присваеваем ид
         player=instance_create(400,300,obj_player);//Спавнимся
         player.idd=global.myid;//Присваеваем айди с сервера
         player.x=buffer_read( buffer , buffer_f32 );
         player.y=buffer_read( buffer , buffer_f32 );
         player.image_index=buffer_read( buffer , buffer_u16 );
         player.hp=buffer_read( buffer , buffer_u16 );
      break;
      case 2://Передвижение
        var idd_player=buffer_read( buffer , buffer_s32 );
        if(idd_player!=global.myid){
        var img_angle=buffer_read( buffer , buffer_u16 );
        var xx=buffer_read( buffer , buffer_f32 );
        var yy=buffer_read( buffer , buffer_f32 );
        with(obj_player){
            if(idd=idd_player){
                direction=img_angle;
                x=xx;
                y=yy;
            }
        }
        }
      break;
      case 3://Фаерболлы
        var idd_bullet=buffer_read( buffer , buffer_s32 );
        var direction_bullet=buffer_read( buffer , buffer_u16 );        
        var speed_bullet=buffer_read( buffer , buffer_u16 );
        with(obj_player){
            if(idd=idd_bullet){//игрок и его фаерболл
                bullet=instance_create(x,y,obj_bullet);//Создаём фаерболл из инфы сервера
                bullet.idd=idd_bullet;
                bullet.direction=direction_bullet;
                bullet.speed=speed_bullet;
            }
        }
      break;
      case 4://Показ всех при подключении
        players=instance_create(x,y,obj_player);
        players.idd=buffer_read( buffer , buffer_s32 );
        players.image_index=buffer_read( buffer , buffer_u16 );
        players.hp=buffer_read( buffer , buffer_u16 );
      break;
      case 5: //Показ у других игроков
        var idd_enemy_player=buffer_read( buffer , buffer_s32 );
        if(idd_enemy_player!=global.myid){//не появляться у себя
            enemy_players=instance_create(x,y,obj_player);
            enemy_players.idd=idd_enemy_player;
            enemy_players.image_index=buffer_read( buffer , buffer_u16 );
            enemy_players.hp=buffer_read( buffer , buffer_u16 );
        }
      break;
      case 6://Изменение хп
        var idd_player=buffer_read( buffer , buffer_s32 );
        var hp_player=buffer_read( buffer , buffer_u16 );
        with(obj_player){
            if(idd=idd_player){
                hp=hp_player;
            }
        }
      break;
   }