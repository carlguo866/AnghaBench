; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_get_file_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_get_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_dll_path = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @test_dll_path, align 4
  %5 = load i32, i32* @GENERIC_READ, align 4
  %6 = load i32, i32* @FILE_SHARE_READ, align 4
  %7 = load i32, i32* @OPEN_EXISTING, align 4
  %8 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %9 = call i64 @CreateFileA(i32 %4, i32 %5, i32 %6, i32* null, i32 %7, i32 %8, i32* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @GetFileSize(i64 %15, i32* null)
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @CloseHandle(i64 %17)
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
