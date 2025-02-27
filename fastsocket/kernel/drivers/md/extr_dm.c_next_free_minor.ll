; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_next_free_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_next_free_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_minor_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_minor_lock = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global i32 0, align 4
@MINORBITS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @next_free_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_free_minor(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @idr_pre_get(i32* @_minor_idr, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = call i32 @spin_lock(i32* @_minor_lock)
  %15 = load i32, i32* @MINOR_ALLOCED, align 4
  %16 = call i32 @idr_get_new(i32* @_minor_idr, i32 %15, i32* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %33

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MINORBITS, align 4
  %23 = shl i32 1, %22
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @idr_remove(i32* @_minor_idr, i32 %26)
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %3, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = call i32 @spin_unlock(i32* @_minor_lock)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, i32, i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
