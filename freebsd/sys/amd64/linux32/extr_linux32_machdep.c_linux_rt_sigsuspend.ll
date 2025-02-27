; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_rt_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_rt_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_rt_sigsuspend_args = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_rt_sigsuspend(%struct.thread* %0, %struct.linux_rt_sigsuspend_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_rt_sigsuspend_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_rt_sigsuspend_args* %1, %struct.linux_rt_sigsuspend_args** %5, align 8
  %9 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @copyin(i32 %19, i32* %6, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %16
  %26 = call i32 @linux_to_bsd_sigset(i32* %6, i32* %7)
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @kern_sigsuspend(%struct.thread* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @linux_to_bsd_sigset(i32*, i32*) #1

declare dso_local i32 @kern_sigsuspend(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
