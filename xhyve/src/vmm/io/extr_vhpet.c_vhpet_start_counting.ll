; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_start_counting.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_start_counting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32 }

@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhpet*)* @vhpet_start_counting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpet_start_counting(%struct.vhpet* %0) #0 {
  %2 = alloca %struct.vhpet*, align 8
  %3 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %2, align 8
  %4 = call i32 (...) @sbinuptime()
  %5 = load %struct.vhpet*, %struct.vhpet** %2, align 8
  %6 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.vhpet*, %struct.vhpet** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.vhpet*, %struct.vhpet** %2, align 8
  %15 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vhpet*, %struct.vhpet** %2, align 8
  %18 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vhpet_start_timer(%struct.vhpet* %12, i32 %13, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %7
  ret void
}

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @vhpet_start_timer(%struct.vhpet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
