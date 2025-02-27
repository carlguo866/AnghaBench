; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i32)* @raid10_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_quiesce(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r10conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  store %struct.r10conf* %8, %struct.r10conf** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %16 [
    i32 1, label %10
    i32 0, label %13
  ]

10:                                               ; preds = %2
  %11 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %12 = call i32 @raise_barrier(%struct.r10conf* %11, i32 0)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %15 = call i32 @lower_barrier(%struct.r10conf* %14)
  br label %16

16:                                               ; preds = %2, %13, %10
  ret void
}

declare dso_local i32 @raise_barrier(%struct.r10conf*, i32) #1

declare dso_local i32 @lower_barrier(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
