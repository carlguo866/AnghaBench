; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_read_process_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_read_process_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i32] [i32 82, i32 101, i32 97, i32 100, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 0], align 4
@GDB_READPROCESSMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 82, i32 101, i32 97, i32 100, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 98, i32 97, i32 115, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [23 x i32] [i32 82, i32 101, i32 97, i32 100, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [23 x i32] [i32 82, i32 101, i32 97, i32 100, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @read_process_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_process_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @GDB_READPROCESSMEMORY, align 4
  %11 = call i32 @gethandle(i8* bitcast ([25 x i32]* @.str to i8*), i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @GDB_READPROCESSMEMORY, align 4
  %14 = call i32 @getpvoid(i8* bitcast ([23 x i32]* @.str.1 to i8*), i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GDB_READPROCESSMEMORY, align 4
  %17 = call i64 @getlen(i8* bitcast ([23 x i32]* @.str.2 to i8*), i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @mempool(i32 %19)
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @ReadProcessMemory(i32 %21, i32 %22, i32 %23, i64 %24, i64* %7)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @GDB_READPROCESSMEMORY, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @putresult(i8* bitcast ([23 x i32]* @.str.3 to i8*), i64 %26, i32 %27, i32 %28, i32 %29, i64 %30)
  ret void
}

declare dso_local i32 @gethandle(i8*, i32, i32) #1

declare dso_local i32 @getpvoid(i8*, i32, i32) #1

declare dso_local i64 @getlen(i8*, i32, i32) #1

declare dso_local i32 @mempool(i32) #1

declare dso_local i64 @ReadProcessMemory(i32, i32, i32, i64, i64*) #1

declare dso_local i32 @putresult(i8*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
