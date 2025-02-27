; ModuleID = '/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psample_group = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@psample_nl_family = common dso_local global i32 0, align 4
@PSAMPLE_NL_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psample_group*, i32)* @psample_group_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psample_group_notify(%struct.psample_group* %0, i32 %1) #0 {
  %3 = alloca %struct.psample_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.psample_group* %0, %struct.psample_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @nlmsg_new(i32 %7, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.psample_group*, %struct.psample_group** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NLM_F_MULTI, align 4
  %18 = call i32 @psample_group_nl_fill(%struct.sk_buff* %14, %struct.psample_group* %15, i32 %16, i32 0, i32 0, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.psample_group*, %struct.psample_group** %3, align 8
  %23 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @PSAMPLE_NL_MCGRP_CONFIG, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i32 @genlmsg_multicast_netns(i32* @psample_nl_family, i32 %24, %struct.sk_buff* %25, i32 0, i32 %26, i32 %27)
  br label %32

29:                                               ; preds = %13
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @nlmsg_free(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %12, %29, %21
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @psample_group_nl_fill(%struct.sk_buff*, %struct.psample_group*, i32, i32, i32, i32) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
