; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_get_file_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_get_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @get_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_file_size(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @GENERIC_READ, align 4
  %8 = load i32, i32* @FILE_SHARE_READ, align 4
  %9 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @OPEN_EXISTING, align 4
  %12 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %13 = call i64 @CreateFileA(i8* %6, i32 %7, i32 %10, i32* null, i32 %11, i32 %12, i32* null)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @GetFileSizeEx(i64 %19, %struct.TYPE_3__* %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @CloseHandle(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSizeEx(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
