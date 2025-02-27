; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_handle_get_arm64_thread_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_handle_get_arm64_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_THREAD_STATE64_COUNT = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_get_arm64_thread_state(i64 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ARM_THREAD_STATE64_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %4, align 4
  br label %28

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @is_saved_state64(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @saved_state_to_thread_state64(i32* %21, i32* %23)
  %25 = load i64, i64* @ARM_THREAD_STATE64_COUNT, align 8
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %18, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @is_saved_state64(i32*) #1

declare dso_local i32 @saved_state_to_thread_state64(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
