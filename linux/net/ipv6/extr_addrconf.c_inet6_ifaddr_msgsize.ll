; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_ifaddr_msgsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_ifaddr_msgsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @inet6_ifaddr_msgsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_ifaddr_msgsize() #0 {
  %1 = call i32 @NLMSG_ALIGN(i32 4)
  %2 = call i32 @nla_total_size(i32 16)
  %3 = add nsw i32 %1, %2
  %4 = call i32 @nla_total_size(i32 16)
  %5 = add nsw i32 %3, %4
  %6 = call i32 @nla_total_size(i32 4)
  %7 = add nsw i32 %5, %6
  %8 = call i32 @nla_total_size(i32 4)
  %9 = add nsw i32 %7, %8
  %10 = call i32 @nla_total_size(i32 4)
  %11 = add nsw i32 %9, %10
  ret i32 %11
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
