; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_BusLogic.h_BusLogic_IncrementErrorCounter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_BusLogic.h_BusLogic_IncrementErrorCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @BusLogic_IncrementErrorCounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BusLogic_IncrementErrorCounter(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = icmp slt i32 %5, 65535
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i16*, i16** %2, align 8
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 2
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
