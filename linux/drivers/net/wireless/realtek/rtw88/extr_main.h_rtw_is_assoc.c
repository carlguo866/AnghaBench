
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int sta_cnt; } ;



__attribute__((used)) static inline bool rtw_is_assoc(struct rtw_dev *rtwdev)
{
 return !!rtwdev->sta_cnt;
}
