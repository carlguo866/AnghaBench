; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_fresult_to_errno.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_fresult_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fresult_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fresult_to_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %45 [
    i32 146, label %5
    i32 144, label %7
    i32 135, label %10
    i32 134, label %12
    i32 132, label %14
    i32 142, label %16
    i32 147, label %18
    i32 145, label %20
    i32 141, label %22
    i32 128, label %24
    i32 143, label %26
    i32 137, label %28
    i32 133, label %30
    i32 138, label %32
    i32 130, label %34
    i32 139, label %36
    i32 136, label %38
    i32 129, label %40
    i32 140, label %42
    i32 131, label %44
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EIO, align 4
  store i32 %6, i32* %2, align 4
  br label %48

7:                                                ; preds = %1
  %8 = call i32 @assert(i32 0)
  %9 = load i32, i32* @EIO, align 4
  store i32 %9, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load i32, i32* @EACCES, align 4
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load i32, i32* @EEXIST, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @EBADF, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  %25 = load i32, i32* @EACCES, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load i32, i32* @ENODEV, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load i32, i32* @EINTR, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %1
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load i32, i32* @EACCES, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load i32, i32* @ENFILE, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

45:                                               ; preds = %1
  %46 = call i32 @assert(i32 0)
  %47 = load i32, i32* @ENOTSUP, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %7, %5
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
