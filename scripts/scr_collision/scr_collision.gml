// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more informatio
function tile_meeting(_x, _y, _layer) {

       tilemap = layer_tilemap_get_id(_layer);

       

       var _x1 = tilemap_get_cell_x_at_pixel(tilemap, bbox_left + (_x - x), y),

           _y1 = tilemap_get_cell_y_at_pixel(tilemap, x, bbox_top + (_y - y)),

           _x2 = tilemap_get_cell_x_at_pixel(tilemap, bbox_right + (_x - x), y),

           _y2 = tilemap_get_cell_y_at_pixel(tilemap, x, bbox_bottom + (_y - y));

 

       for(var ix = _x1; ix <= _x2; ix++){

              for(var iy = _y1; iy <= _y2; iy++){

                     if(tile_get_index(tilemap_get(tilemap, ix, iy))){

                           return true;

                     }

              }

       }

 

       return false;

}
