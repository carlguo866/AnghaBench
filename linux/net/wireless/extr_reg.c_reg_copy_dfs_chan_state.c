
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int flags; scalar_t__ center_freq; scalar_t__ dfs_state; int dfs_state_entered; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_RADAR ;
 scalar_t__ NL80211_DFS_USABLE ;

__attribute__((used)) static void reg_copy_dfs_chan_state(struct ieee80211_channel *dst_chan,
        struct ieee80211_channel *src_chan)
{
 if (!(dst_chan->flags & IEEE80211_CHAN_RADAR) ||
     !(src_chan->flags & IEEE80211_CHAN_RADAR))
  return;

 if (dst_chan->flags & IEEE80211_CHAN_DISABLED ||
     src_chan->flags & IEEE80211_CHAN_DISABLED)
  return;

 if (src_chan->center_freq == dst_chan->center_freq &&
     dst_chan->dfs_state == NL80211_DFS_USABLE) {
  dst_chan->dfs_state = src_chan->dfs_state;
  dst_chan->dfs_state_entered = src_chan->dfs_state_entered;
 }
}
