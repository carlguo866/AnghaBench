; ModuleID = '/home/carl/AnghaBench/systemd/src/vconsole/extr_vconsole-setup.c_verify_vc_kbmode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/vconsole/extr_vconsole-setup.c_verify_vc_kbmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDGKBMODE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@K_XLATE = common dso_local global i32 0, align 4
@K_UNICODE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_vc_kbmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_vc_kbmode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @KDGKBMODE, align 4
  %7 = call i64 @ioctl(i32 %5, i32 %6, i32* %4)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @K_XLATE, align 4
  %15 = load i32, i32* @K_UNICODE, align 4
  %16 = call i64 @IN_SET(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ 0, %18 ], [ %21, %19 ]
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
