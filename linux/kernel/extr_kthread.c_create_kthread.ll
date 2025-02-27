; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_create_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_create_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kthread_create_info = type { i32, i32, i32 }
%struct.completion = type { i32 }

@kthread = common dso_local global i32 0, align 4
@CLONE_FS = common dso_local global i32 0, align 4
@CLONE_FILES = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kthread_create_info*)* @create_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_kthread(%struct.kthread_create_info* %0) #0 {
  %2 = alloca %struct.kthread_create_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.completion*, align 8
  store %struct.kthread_create_info* %0, %struct.kthread_create_info** %2, align 8
  %5 = load i32, i32* @kthread, align 4
  %6 = load %struct.kthread_create_info*, %struct.kthread_create_info** %2, align 8
  %7 = load i32, i32* @CLONE_FS, align 4
  %8 = load i32, i32* @CLONE_FILES, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SIGCHLD, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @kernel_thread(i32 %5, %struct.kthread_create_info* %6, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.kthread_create_info*, %struct.kthread_create_info** %2, align 8
  %17 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %16, i32 0, i32 1
  %18 = call %struct.completion* @xchg(i32* %17, i32* null)
  store %struct.completion* %18, %struct.completion** %4, align 8
  %19 = load %struct.completion*, %struct.completion** %4, align 8
  %20 = icmp ne %struct.completion* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.kthread_create_info*, %struct.kthread_create_info** %2, align 8
  %23 = call i32 @kfree(%struct.kthread_create_info* %22)
  br label %31

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ERR_PTR(i32 %25)
  %27 = load %struct.kthread_create_info*, %struct.kthread_create_info** %2, align 8
  %28 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.completion*, %struct.completion** %4, align 8
  %30 = call i32 @complete(%struct.completion* %29)
  br label %31

31:                                               ; preds = %21, %24, %1
  ret void
}

declare dso_local i32 @kernel_thread(i32, %struct.kthread_create_info*, i32) #1

declare dso_local %struct.completion* @xchg(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.kthread_create_info*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
