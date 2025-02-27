; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_request_cell_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_request_cell_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i64, i64 }

@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@NL80211_USER_REG_HINT_CELL_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulatory_request*)* @reg_request_cell_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_request_cell_base(%struct.regulatory_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulatory_request*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %3, align 8
  %4 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %5 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %12 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_USER_REG_HINT_CELL_BASE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
