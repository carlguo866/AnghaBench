; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_upcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@PSR_USR32_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_upcall(%struct.thread* %0, void (i8*)* %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @STACKALIGN(i64 %21)
  %23 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load void (i8*)*, void (i8*)** %6, align 8
  %26 = ptrtoint void (i8*)* %25 to i32
  %27 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PSR_USR32_MODE, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @STACKALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
