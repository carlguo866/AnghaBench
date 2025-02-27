; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/tdilib/extr_handle.c_openTcpFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/tdilib/extr_handle.c_openTcpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TcpFileName = common dso_local global i32 0, align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openTcpFile(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @TcpFileName, align 4
  %10 = call i32 @RtlInitUnicodeString(i32* %5, i32 %9)
  %11 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %12 = call i32 @InitializeObjectAttributes(i32* %6, i32* %5, i32 %11, i32* null, i32* null)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SYNCHRONIZE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FILE_SHARE_READ, align 4
  %18 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %21 = call i32 @NtOpenFile(i32* %13, i32 %16, i32* %6, i32* %7, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @NT_SUCCESS(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %27 = load i32*, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
