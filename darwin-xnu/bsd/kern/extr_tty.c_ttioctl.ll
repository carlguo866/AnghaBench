; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttioctl(%struct.tty* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.tty*, %struct.tty** %6, align 8
  %13 = call i32 @tty_lock(%struct.tty* %12)
  %14 = load %struct.tty*, %struct.tty** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ttioctl_locked(%struct.tty* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.tty*, %struct.tty** %6, align 8
  %21 = call i32 @tty_unlock(%struct.tty* %20)
  %22 = load i32, i32* %11, align 4
  ret i32 %22
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttioctl_locked(%struct.tty*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
