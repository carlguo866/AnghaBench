; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_stop_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_stop_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

@FD_CTL = common dso_local global i32 0, align 4
@PIOCSTOP = common dso_local global i32 0, align 4
@PCSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_stop_process(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load i32, i32* @FD_CTL, align 4
  %12 = call i64 @open_procinfo_files(%struct.TYPE_8__* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %42

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @PIOCSTOP, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = call i64 @ioctl(i64 %18, i32 %19, i32* %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = call i32 @proc_flags(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = call i32 @proc_why(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @proc_what(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = call i32 @proc_get_current_thread(%struct.TYPE_8__* %36)
  %38 = call i32 @PROC_PRETTYFPRINT_STATUS(i32 %31, i32 %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %27, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @open_procinfo_files(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @PROC_PRETTYFPRINT_STATUS(i32, i32, i32, i32) #1

declare dso_local i32 @proc_flags(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_why(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_what(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_get_current_thread(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
