; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sysctl_net_ipv6.c_ipv6_sysctl_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sysctl_net_ipv6.c_ipv6_sysctl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"net/ipv6\00", align 1
@ipv6_rotable = common dso_local global i32 0, align 4
@ip6_header = common dso_local global i32 0, align 4
@ipv6_sysctl_net_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sysctl_register() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ENOMEM, align 4
  %3 = sub nsw i32 0, %2
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @ipv6_rotable, align 4
  %5 = call i32 @register_net_sysctl(i32* @init_net, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* @ip6_header, align 4
  %6 = load i32, i32* @ip6_header, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %15

9:                                                ; preds = %0
  %10 = call i32 @register_pernet_subsys(i32* @ipv6_sysctl_net_ops)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %17, %14, %8
  %16 = load i32, i32* %1, align 4
  ret i32 %16

17:                                               ; preds = %13
  %18 = load i32, i32* @ip6_header, align 4
  %19 = call i32 @unregister_net_sysctl_table(i32 %18)
  br label %15
}

declare dso_local i32 @register_net_sysctl(i32*, i8*, i32) #1

declare dso_local i32 @register_pernet_subsys(i32*) #1

declare dso_local i32 @unregister_net_sysctl_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
