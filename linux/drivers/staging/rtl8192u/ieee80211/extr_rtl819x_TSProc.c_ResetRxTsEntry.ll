; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_TSProc.c_ResetRxTsEntry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_TSProc.c_ResetRxTsEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ts_record = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rx_ts_record*)* @ResetRxTsEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetRxTsEntry(%struct.rx_ts_record* %0) #0 {
  %2 = alloca %struct.rx_ts_record*, align 8
  store %struct.rx_ts_record* %0, %struct.rx_ts_record** %2, align 8
  %3 = load %struct.rx_ts_record*, %struct.rx_ts_record** %2, align 8
  %4 = getelementptr inbounds %struct.rx_ts_record, %struct.rx_ts_record* %3, i32 0, i32 3
  %5 = call i32 @ResetTsCommonInfo(i32* %4)
  %6 = load %struct.rx_ts_record*, %struct.rx_ts_record** %2, align 8
  %7 = getelementptr inbounds %struct.rx_ts_record, %struct.rx_ts_record* %6, i32 0, i32 0
  store i32 65535, i32* %7, align 4
  %8 = load %struct.rx_ts_record*, %struct.rx_ts_record** %2, align 8
  %9 = getelementptr inbounds %struct.rx_ts_record, %struct.rx_ts_record* %8, i32 0, i32 1
  store i32 65535, i32* %9, align 4
  %10 = load %struct.rx_ts_record*, %struct.rx_ts_record** %2, align 8
  %11 = getelementptr inbounds %struct.rx_ts_record, %struct.rx_ts_record* %10, i32 0, i32 2
  %12 = call i32 @ResetBaEntry(i32* %11)
  ret void
}

declare dso_local i32 @ResetTsCommonInfo(i32*) #1

declare dso_local i32 @ResetBaEntry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
