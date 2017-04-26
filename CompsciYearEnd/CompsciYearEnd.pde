/*compsci year end assignment
 group Eric, Brian, Kaizen
 assignement due may 24th
*/

/*
   //array for the 3 sets of armor
  Armor [] bonus = new Armor[3];
  {
    bonus[0]=new Armor(20,5); //leather
    bonus[1]=new Armor(30,0); //chainmail
    bonus[2]=new Armor(45,-5); //iron
  }
 
  //strength boost
   Items (Entity[] player)
   {
    boost=(player.attack)*(0.15);
   }
   
   //defence boost
   Items (Entity[] player)
   {
    boost=(player.defence)*(0.15);
   }
   
   //speed
   Items (Entity[] player)
   {
    boost=(player.speed)*(0.15);
   }
  
   // only including the 4 different potions, change the array size when adding more item types
   Items[] itemEffects = new Items[4];
  {
   //health
   itemEffects[0] = new Items(20);
   //strength
   itemEffects[1] = new Items(characterStats[0]);
   //defence
   itemEffects[2] = new Items(characterStats[0]);
   //speed
   itemEffects[3] = new Items(characterStats[0]);
    }
 
     // used to correspond the stats with the stats of the player
    Entity (Entity[] player, float acc)
    {
    // for all the stats, a base stat value is needed to be added to the player's % stats
    attack=(player.attack)*(0.3);
    defence=(player.defence)*(0.3);
    speed=(player.speed)*(0.3);
    accuracy=acc;
    }
 
     //exclusive for player
     Entity[] characterStats = new Entity[1]; 
     {
      characterStats[0] = new Entity(5, 5, 5, 50, 100);
     }
     //exclusive for enemy entities
     Entity[] enemyStats = new Entity[7];
     {
     // added item class and created stats for some enemy entities
     // for basic enemies
     characterStats[0] = new Entity(characterStats[0],100);
     characterStats[1] = new Entity(characterStats[0],100);
     characterStats[2] = new Entity(characterStats[0],100);
     // for mini bosses
     characterStats[3] = new Entity(
     characterStats[4] = new Entity(
     characterStats[5] = new Entity(
     // for final boss
     
     characterStats[7] = new Entity(
*/

int x=200, y = 200;
int pw = 40; // player width
int ph = 40; // player height
int s = 27; // player speed


void setup() {
  size(1000, 800);
}

void draw() {
  background(255);
  rect(x, y, pw, ph);
  println(x + " " + y);
}

void keyReleased() {
  if (key == CODED && keyCode == UP || key == 'w') {
    if (y - s <= 0)
      y = 0;
    else if (y >= 0) 
      y-=s;
  }
  if (key == CODED && keyCode == DOWN || key == 's') {
    if (y + s >= height - ph)
      y= height - ph;
    else if (y <= height)
      y+=s;
  }

  if (key == CODED && keyCode == LEFT || key == 'a') {
    if (x-s <=0)
      x=0;
    else if (x >= 0)
      x-=s;
  }

  if (key == CODED && keyCode == RIGHT || key == 'd') {
    if (x + s >=width-pw)
      x = width - pw;
    else if (x <= width - pw)
      x+=s;
  }
}