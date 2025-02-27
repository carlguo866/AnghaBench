
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {unsigned long thread_allowed_mask; unsigned long thread_start_mask; int mask_lock; } ;


 int EPERM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int
lcs_set_thread_start_bit(struct lcs_card *card, unsigned long thread)
{
        unsigned long flags;

 spin_lock_irqsave(&card->mask_lock, flags);
        if ( !(card->thread_allowed_mask & thread) ||
              (card->thread_start_mask & thread) ) {
                spin_unlock_irqrestore(&card->mask_lock, flags);
                return -EPERM;
        }
        card->thread_start_mask |= thread;
 spin_unlock_irqrestore(&card->mask_lock, flags);
        return 0;
}
