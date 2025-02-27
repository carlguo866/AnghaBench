; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_specific_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_specific_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINORBITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_minor_lock = common dso_local global i32 0, align 4
@_minor_idr = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @specific_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @specific_minor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MINORBITS, align 4
  %7 = shl i32 1, %6
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @idr_preload(i32 %13)
  %15 = call i32 @spin_lock(i32* @_minor_lock)
  %16 = load i32, i32* @MINOR_ALLOCED, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_NOWAIT, align 4
  %21 = call i32 @idr_alloc(i32* @_minor_idr, i32 %16, i32 %17, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = call i32 @spin_unlock(i32* @_minor_lock)
  %23 = call i32 (...) @idr_preload_end()
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
