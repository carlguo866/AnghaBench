; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_msgsize_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_msgsize_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETCONFA_ALL = common dso_local global i32 0, align 4
@NETCONFA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpls_netconf_msgsize_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_netconf_msgsize_devconf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @NLMSG_ALIGN(i32 4)
  %6 = call i32 @nla_total_size(i32 4)
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @NETCONFA_ALL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @NETCONFA_INPUT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %12
  %20 = call i32 @nla_total_size(i32 4)
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
