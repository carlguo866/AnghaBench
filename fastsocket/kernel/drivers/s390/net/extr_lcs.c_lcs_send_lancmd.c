
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned long data; scalar_t__ expires; int function; } ;
struct lcs_reply {void (* callback ) (struct lcs_card*,struct lcs_cmd*) ;int rc; int received; int wait_q; int list; struct lcs_card* card; } ;
struct lcs_cmd {scalar_t__ sequence_no; scalar_t__ return_code; } ;
struct lcs_card {int lancmd_timeout; int write; int lock; int lancmd_waiters; int sequence_no; } ;
struct lcs_buffer {int callback; scalar_t__ data; } ;


 int EIO ;
 int ENOMEM ;
 int HZ ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_DBF_TEXT_ (int,int ,char*,int) ;
 int add_timer (struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;
 int init_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 struct lcs_reply* lcs_alloc_reply (struct lcs_cmd*) ;
 int lcs_lancmd_timeout ;
 int lcs_put_reply (struct lcs_reply*) ;
 int lcs_ready_buffer (int *,struct lcs_buffer*) ;
 int lcs_release_buffer ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int
lcs_send_lancmd(struct lcs_card *card, struct lcs_buffer *buffer,
  void (*reply_callback)(struct lcs_card *, struct lcs_cmd *))
{
 struct lcs_reply *reply;
 struct lcs_cmd *cmd;
 struct timer_list timer;
 unsigned long flags;
 int rc;

 LCS_DBF_TEXT(4, trace, "sendcmd");
 cmd = (struct lcs_cmd *) buffer->data;
 cmd->return_code = 0;
 cmd->sequence_no = card->sequence_no++;
 reply = lcs_alloc_reply(cmd);
 if (!reply)
  return -ENOMEM;
 reply->callback = reply_callback;
 reply->card = card;
 spin_lock_irqsave(&card->lock, flags);
 list_add_tail(&reply->list, &card->lancmd_waiters);
 spin_unlock_irqrestore(&card->lock, flags);

 buffer->callback = lcs_release_buffer;
 rc = lcs_ready_buffer(&card->write, buffer);
 if (rc)
  return rc;
 init_timer(&timer);
 timer.function = lcs_lancmd_timeout;
 timer.data = (unsigned long) reply;
 timer.expires = jiffies + HZ*card->lancmd_timeout;
 add_timer(&timer);
 wait_event(reply->wait_q, reply->received);
 del_timer_sync(&timer);
 LCS_DBF_TEXT_(4, trace, "rc:%d",reply->rc);
 rc = reply->rc;
 lcs_put_reply(reply);
 return rc ? -EIO : 0;
}
