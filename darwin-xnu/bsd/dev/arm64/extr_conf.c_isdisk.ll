; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_conf.c_isdisk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_conf.c_isdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NODEV = common dso_local global i64 0, align 8
@bdevsw = common dso_local global %struct.TYPE_2__* null, align 8
@D_DISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdisk(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @major(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 128, label %10
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @chrtoblk(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @NODEV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %28

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %2, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bdevsw, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @D_DISK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %2, %27, %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @major(i64) #1

declare dso_local i64 @chrtoblk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
