; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_cls.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_cls(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %9 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %10 = call i32 @GetStdHandle(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GetConsoleScreenBufferInfo(i32 %12, %struct.TYPE_9__* %8)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = bitcast %struct.TYPE_8__* %6 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @FillConsoleOutputCharacter(i32 %14, i32 32, i32 %21, i64 %23, i32* %7)
  %25 = load i32, i32* %5, align 4
  %26 = bitcast %struct.TYPE_8__* %6 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @SetConsoleCursorPosition(i32 %25, i64 %27)
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %29
}

declare dso_local i32 @GetStdHandle(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @FillConsoleOutputCharacter(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @SetConsoleCursorPosition(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
