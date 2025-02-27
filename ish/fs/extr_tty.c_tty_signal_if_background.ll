; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_signal_if_background.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_signal_if_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64 }

@_EIO = common dso_local global i32 0, align 4
@_EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i64, i32)* @tty_signal_if_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_signal_if_background(%struct.tty* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tty*, %struct.tty** %5, align 8
  %9 = call i32 @tty_is_current(%struct.tty* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

12:                                               ; preds = %3
  %13 = load %struct.tty*, %struct.tty** %5, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.tty*, %struct.tty** %5, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %12
  store i32 0, i32* %4, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @try_self_signal(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @_EIO, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @_EINTR, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28, %23, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @tty_is_current(%struct.tty*) #1

declare dso_local i32 @try_self_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
