; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.vas_window* }
%struct.vas_window = type { i32, i64, i32, i32 }

@vas_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Type: %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Send\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Receive\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Pid : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vas_window*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.vas_window*, %struct.vas_window** %7, align 8
  store %struct.vas_window* %8, %struct.vas_window** %5, align 8
  %9 = call i32 @mutex_lock(i32* @vas_mutex)
  %10 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %11 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %18 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cop_to_str(i32 %19)
  %21 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %22 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %30 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %15, %14
  %34 = call i32 @mutex_unlock(i32* @vas_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @cop_to_str(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
