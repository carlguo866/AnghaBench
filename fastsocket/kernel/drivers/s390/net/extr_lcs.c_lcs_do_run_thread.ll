; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_do_run_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_do_run_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, i64)* @lcs_do_run_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_do_run_thread(%struct.lcs_card* %0, i64 %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %7 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @__lcs_do_run_thread(%struct.lcs_card* %9, i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @wait_event(i32 %8, i32 %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @__lcs_do_run_thread(%struct.lcs_card*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
