; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_frame_router.c_router_send_frame.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_frame_router.c_router_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_master = common dso_local global i64 0, align 8
@UP_LINK = common dso_local global i32 0, align 4
@DOWN_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @router_send_frame(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i64, i64* @is_master, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @UP_LINK, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  %20 = call i32 @validator_send_frame(i32 %16, i32* %17, i64 %19)
  br label %21

21:                                               ; preds = %12, %9
  br label %36

22:                                               ; preds = %3
  %23 = load i64, i64* @is_master, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @DOWN_LINK, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @validator_send_frame(i32 %30, i32* %31, i64 %33)
  br label %35

35:                                               ; preds = %25, %22
  br label %36

36:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @validator_send_frame(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
