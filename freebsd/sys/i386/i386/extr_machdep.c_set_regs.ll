; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.trapframe* }
%struct.pcb = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_regs(%struct.thread* %0, %struct.reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.reg*, align 8
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.reg* %1, %struct.reg** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %7, align 8
  %11 = load %struct.reg*, %struct.reg** %5, align 8
  %12 = getelementptr inbounds %struct.reg, %struct.reg* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EFL_SECURE(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.reg*, %struct.reg** %5, align 8
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CS_SECURE(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %19
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load %struct.pcb*, %struct.pcb** %29, align 8
  store %struct.pcb* %30, %struct.pcb** %6, align 8
  %31 = load %struct.reg*, %struct.reg** %5, align 8
  %32 = getelementptr inbounds %struct.reg, %struct.reg* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 4
  %36 = load %struct.reg*, %struct.reg** %5, align 8
  %37 = getelementptr inbounds %struct.reg, %struct.reg* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 4
  %41 = load %struct.reg*, %struct.reg** %5, align 8
  %42 = getelementptr inbounds %struct.reg, %struct.reg* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 4
  %46 = load %struct.reg*, %struct.reg** %5, align 8
  %47 = getelementptr inbounds %struct.reg, %struct.reg* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  %51 = load %struct.reg*, %struct.reg** %5, align 8
  %52 = getelementptr inbounds %struct.reg, %struct.reg* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 4
  %56 = load %struct.reg*, %struct.reg** %5, align 8
  %57 = getelementptr inbounds %struct.reg, %struct.reg* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.reg*, %struct.reg** %5, align 8
  %62 = getelementptr inbounds %struct.reg, %struct.reg* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load %struct.reg*, %struct.reg** %5, align 8
  %67 = getelementptr inbounds %struct.reg, %struct.reg* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.reg*, %struct.reg** %5, align 8
  %72 = getelementptr inbounds %struct.reg, %struct.reg* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.reg*, %struct.reg** %5, align 8
  %77 = getelementptr inbounds %struct.reg, %struct.reg* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %80 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.reg*, %struct.reg** %5, align 8
  %82 = getelementptr inbounds %struct.reg, %struct.reg* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.reg*, %struct.reg** %5, align 8
  %87 = getelementptr inbounds %struct.reg, %struct.reg* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.reg*, %struct.reg** %5, align 8
  %92 = getelementptr inbounds %struct.reg, %struct.reg* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.reg*, %struct.reg** %5, align 8
  %97 = getelementptr inbounds %struct.reg, %struct.reg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %100 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.reg*, %struct.reg** %5, align 8
  %102 = getelementptr inbounds %struct.reg, %struct.reg* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.reg*, %struct.reg** %5, align 8
  %107 = getelementptr inbounds %struct.reg, %struct.reg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pcb*, %struct.pcb** %6, align 8
  %110 = getelementptr inbounds %struct.pcb, %struct.pcb* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %27, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @EFL_SECURE(i32, i32) #1

declare dso_local i32 @CS_SECURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
