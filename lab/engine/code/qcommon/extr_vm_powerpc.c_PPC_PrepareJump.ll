; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_PrepareJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_PrepareJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@sj_last = common dso_local global %struct.TYPE_5__* null, align 8
@branchAlways = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @PPC_PrepareJump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PPC_PrepareJump(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i8* @PPC_Malloc(i32 16)
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  %15 = call i8* @PPC_Malloc(i32 48)
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sj_last, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** @sj_last, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @branchAlways, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @PPC_Append(%struct.TYPE_6__* %48, i64 %49)
  ret void
}

declare dso_local i8* @PPC_Malloc(i32) #1

declare dso_local i32 @PPC_Append(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
