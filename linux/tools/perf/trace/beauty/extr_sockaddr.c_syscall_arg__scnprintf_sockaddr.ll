; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_syscall_arg__scnprintf_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_syscall_arg__scnprintf_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_sockaddr(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall_arg*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %7, align 8
  %8 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %9 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @syscall_arg__scnprintf_augmented_sockaddr(%struct.syscall_arg* %14, i8* %15, i64 %16)
  store i64 %17, i64* %4, align 8
  br label %25

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %22 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @scnprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i64, i64* %4, align 8
  ret i64 %26
}

declare dso_local i64 @syscall_arg__scnprintf_augmented_sockaddr(%struct.syscall_arg*, i8*, i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
