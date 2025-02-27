; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_RawClose.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_RawClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_RAW_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_RawClose(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @iosuhaxHandle, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* @iosuhaxHandle, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @memalign(i32 32, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 -2, i32* %3, align 4
  br label %45

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* @iosuhaxHandle, align 8
  %31 = load i32, i32* @IOCTL_FSA_RAW_CLOSE, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IOS_Ioctl(i64 %30, i32 %31, i32* %32, i32 %33, i32* %9, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @free(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @free(i32* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %22, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
