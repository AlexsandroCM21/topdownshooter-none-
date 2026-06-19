/// @description Insert description here
// You can write your code in this editor

ddinimigo01 = {
    sprite  :   spr_inimigo01,
    vida    :   20
}

dds = {
    inimigo01   :   ddinimigo01
}

dname = "ddinimigo01";
dado = dds[$ dname];

direction = irandom_range(0, 359);

vel = 2;
