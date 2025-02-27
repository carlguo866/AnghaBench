; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_computeSignal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_computeSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_trap_info = type { i32, i32 }

@hard_trap_info = common dso_local global %struct.hard_trap_info* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @computeSignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computeSignal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hard_trap_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.hard_trap_info*, %struct.hard_trap_info** @hard_trap_info, align 8
  store %struct.hard_trap_info* %5, %struct.hard_trap_info** %4, align 8
  br label %6

6:                                                ; preds = %29, %1
  %7 = load %struct.hard_trap_info*, %struct.hard_trap_info** %4, align 8
  %8 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.hard_trap_info*, %struct.hard_trap_info** %4, align 8
  %13 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = load %struct.hard_trap_info*, %struct.hard_trap_info** %4, align 8
  %20 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.hard_trap_info*, %struct.hard_trap_info** %4, align 8
  %26 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.hard_trap_info*, %struct.hard_trap_info** %4, align 8
  %31 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %30, i32 1
  store %struct.hard_trap_info* %31, %struct.hard_trap_info** %4, align 8
  br label %6

32:                                               ; preds = %16
  %33 = load i32, i32* @SIGHUP, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
