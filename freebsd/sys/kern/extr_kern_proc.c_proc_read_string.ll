; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i8*, i8*, i64)* @proc_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_string(%struct.thread* %0, %struct.proc* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.proc* %1, %struct.proc** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.thread*, %struct.thread** %7, align 8
  %14 = load %struct.proc*, %struct.proc** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @proc_readmem(%struct.thread* %13, %struct.proc* %14, i32 %16, i8* %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i64 @proc_readmem(%struct.thread*, %struct.proc*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
