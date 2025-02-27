; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.ptrace_io_desc = type { i64, i8*, i8*, i32 }

@PIOD_READ_D = common dso_local global i32 0, align 4
@PT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_read(%struct.proc_handle* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ptrace_io_desc, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %12 = icmp eq %struct.proc_handle* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

14:                                               ; preds = %4
  %15 = load i32, i32* @PIOD_READ_D, align 4
  %16 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %10, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %10, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %10, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %10, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @PT_IO, align 4
  %25 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %26 = call i32 @proc_getpid(%struct.proc_handle* %25)
  %27 = ptrtoint %struct.ptrace_io_desc* %10 to i32
  %28 = call i64 @ptrace(i32 %24, i32 %26, i32 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %35

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %30, %13
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
