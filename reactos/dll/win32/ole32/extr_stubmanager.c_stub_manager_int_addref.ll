; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_int_addref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_int_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"before %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stub_manager*)* @stub_manager_int_addref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stub_manager_int_addref(%struct.stub_manager* %0) #0 {
  %2 = alloca %struct.stub_manager*, align 8
  %3 = alloca i64, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %2, align 8
  %4 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %5 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @EnterCriticalSection(i32* %7)
  %9 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %10 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %14 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @LeaveCriticalSection(i32* %16)
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
