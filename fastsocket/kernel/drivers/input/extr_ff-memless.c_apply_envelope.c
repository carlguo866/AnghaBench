
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ml_effect_state {scalar_t__ stop_at; scalar_t__ play_at; struct ff_effect* effect; } ;
struct ff_envelope {int attack_length; int fade_length; int fade_level; int attack_level; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct ff_effect {TYPE_1__ replay; } ;


 int __s16 ;
 int abs (int) ;
 int debug (char*,int,...) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int min_t (int ,int ,int) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;

__attribute__((used)) static int apply_envelope(struct ml_effect_state *state, int value,
     struct ff_envelope *envelope)
{
 struct ff_effect *effect = state->effect;
 unsigned long now = jiffies;
 int time_from_level;
 int time_of_envelope;
 int envelope_level;
 int difference;

 if (envelope->attack_length &&
     time_before(now,
   state->play_at + msecs_to_jiffies(envelope->attack_length))) {
  debug("value = 0x%x, attack_level = 0x%x", value,
        envelope->attack_level);
  time_from_level = jiffies_to_msecs(now - state->play_at);
  time_of_envelope = envelope->attack_length;
  envelope_level = min_t(__s16, envelope->attack_level, 0x7fff);

 } else if (envelope->fade_length && effect->replay.length &&
     time_after(now,
         state->stop_at - msecs_to_jiffies(envelope->fade_length)) &&
     time_before(now, state->stop_at)) {
  time_from_level = jiffies_to_msecs(state->stop_at - now);
  time_of_envelope = envelope->fade_length;
  envelope_level = min_t(__s16, envelope->fade_level, 0x7fff);
 } else
  return value;

 difference = abs(value) - envelope_level;

 debug("difference = %d", difference);
 debug("time_from_level = 0x%x", time_from_level);
 debug("time_of_envelope = 0x%x", time_of_envelope);

 difference = difference * time_from_level / time_of_envelope;

 debug("difference = %d", difference);

 return value < 0 ?
  -(difference + envelope_level) : (difference + envelope_level);
}
