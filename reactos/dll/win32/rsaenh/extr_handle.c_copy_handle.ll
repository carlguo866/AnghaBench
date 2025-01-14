; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_copy_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_copy_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"(lpTable=%p, handle=%ld, copy=%p)\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_handle(%struct.handle_table* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.handle_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.handle_table* %12, i64 %13, i64* %14)
  %16 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %17 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %16, i32 0, i32 0
  %18 = call i32 @EnterCriticalSection(i32* %17)
  %19 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @lookup_handle(%struct.handle_table* %19, i64 %20, i32 %21, i32** %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %28 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %27, i32 0, i32 0
  %29 = call i32 @LeaveCriticalSection(i32* %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = call i32 @alloc_handle(%struct.handle_table* %32, i32* %33, i64* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.handle_table*, %struct.handle_table** %6, align 8
  %37 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %36, i32 0, i32 0
  %38 = call i32 @LeaveCriticalSection(i32* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @TRACE(i8*, %struct.handle_table*, i64, i64*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @lookup_handle(%struct.handle_table*, i64, i32, i32**) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @alloc_handle(%struct.handle_table*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
