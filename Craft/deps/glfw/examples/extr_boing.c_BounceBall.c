
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 float ANIMATION_SPEED ;
 int BOUNCE_HEIGHT ;
 int BOUNCE_WIDTH ;
 scalar_t__ RAND_MAX ;
 int WALL_L_OFFSET ;
 int WALL_R_OFFSET ;
 int ball_x ;
 float ball_x_inc ;
 int ball_y ;
 float ball_y_inc ;
 int deg_rot_y_inc ;
 scalar_t__ override_pos ;
 scalar_t__ rand () ;
 scalar_t__ sin_deg (float) ;

void BounceBall( double delta_t )
{
   GLfloat sign;
   GLfloat deg;

   if ( override_pos )
     return;


   if ( ball_x > (BOUNCE_WIDTH/2 + WALL_R_OFFSET ) )
   {
      ball_x_inc = -0.5f - 0.75f * (GLfloat)rand() / (GLfloat)RAND_MAX;
      deg_rot_y_inc = -deg_rot_y_inc;
   }
   if ( ball_x < -(BOUNCE_HEIGHT/2 + WALL_L_OFFSET) )
   {
      ball_x_inc = 0.5f + 0.75f * (GLfloat)rand() / (GLfloat)RAND_MAX;
      deg_rot_y_inc = -deg_rot_y_inc;
   }


   if ( ball_y > BOUNCE_HEIGHT/2 )
   {
      ball_y_inc = -0.75f - 1.f * (GLfloat)rand() / (GLfloat)RAND_MAX;
   }
   if ( ball_y < -BOUNCE_HEIGHT/2*0.85 )
   {
      ball_y_inc = 0.75f + 1.f * (GLfloat)rand() / (GLfloat)RAND_MAX;
   }


   ball_x += ball_x_inc * ((float)delta_t*ANIMATION_SPEED);
   ball_y += ball_y_inc * ((float)delta_t*ANIMATION_SPEED);




   if ( ball_y_inc < 0 ) sign = -1.0; else sign = 1.0;

   deg = (ball_y + BOUNCE_HEIGHT/2) * 90 / BOUNCE_HEIGHT;
   if ( deg > 80 ) deg = 80;
   if ( deg < 10 ) deg = 10;

   ball_y_inc = sign * 4.f * (float) sin_deg( deg );
}
