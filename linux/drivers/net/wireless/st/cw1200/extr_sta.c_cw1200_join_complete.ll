; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_join_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"[STA] Join complete (%d)\0A\00", align 1
@CW1200_JOIN_STATUS_PASSIVE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@CW1200_JOIN_STATUS_IBSS = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_PRE_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*)* @cw1200_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_join_complete(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %4 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %8 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @CW1200_JOIN_STATUS_PASSIVE, align 4
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cw1200_update_listening(%struct.cw1200_common* %17, i32 %20)
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %23 = call i32 @cw1200_do_unjoin(%struct.cw1200_common* %22)
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee80211_connection_loss(i32 %26)
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @CW1200_JOIN_STATUS_IBSS, align 4
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @CW1200_JOIN_STATUS_PRE_STA, align 4
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %45 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %44)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @cw1200_update_listening(%struct.cw1200_common*, i32) #1

declare dso_local i32 @cw1200_do_unjoin(%struct.cw1200_common*) #1

declare dso_local i32 @ieee80211_connection_loss(i32) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
