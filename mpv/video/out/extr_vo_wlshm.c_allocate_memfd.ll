; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_allocate_memfd.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_allocate_memfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"mpv\00", align 1
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_ADD_SEALS = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @allocate_memfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_memfd(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @MFD_CLOEXEC, align 4
  %6 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @memfd_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @F_ADD_SEALS, align 4
  %15 = load i32, i32* @F_SEAL_SHRINK, align 4
  %16 = load i32, i32* @F_SEAL_SEAL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @fcntl(i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @posix_fallocate(i32 %19, i32 0, i64 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @close(i32 %26)
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @memfd_create(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @posix_fallocate(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
