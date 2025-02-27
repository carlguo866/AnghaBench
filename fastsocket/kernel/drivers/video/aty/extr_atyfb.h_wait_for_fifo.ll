; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb.h_wait_for_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb.h_wait_for_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@FIFO_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.atyfb_par*)* @wait_for_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_fifo(i32 %0, %struct.atyfb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atyfb_par*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.atyfb_par* %1, %struct.atyfb_par** %4, align 8
  br label %5

5:                                                ; preds = %13, %2
  %6 = load i32, i32* @FIFO_STAT, align 4
  %7 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %8 = call i32 @aty_ld_le32(i32 %6, %struct.atyfb_par* %7)
  %9 = and i32 %8, 65535
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 32768, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %5

14:                                               ; preds = %5
  ret void
}

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
