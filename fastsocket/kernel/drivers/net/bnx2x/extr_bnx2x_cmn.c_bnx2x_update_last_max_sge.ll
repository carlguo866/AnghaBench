; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_last_max_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_last_max_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*, i32)* @bnx2x_update_last_max_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_last_max_sge(%struct.bnx2x_fastpath* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @SUB_S16(i32 %9, i32 %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %2
  ret void
}

declare dso_local i64 @SUB_S16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
