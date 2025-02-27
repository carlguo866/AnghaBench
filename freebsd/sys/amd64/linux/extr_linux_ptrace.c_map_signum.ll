; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_map_signum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_map_signum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINUX_SIGRTMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @map_signum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_signum(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LINUX_SIGRTMAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @linux_to_bsd_signal(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SIGSTOP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %18, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @linux_to_bsd_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
