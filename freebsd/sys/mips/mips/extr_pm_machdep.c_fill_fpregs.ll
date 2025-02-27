; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_fill_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_fill_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fpreg = type { i32* }

@fpcurthread = common dso_local global i32 0, align 4
@cpuinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FIR_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load i32, i32* @fpcurthread, align 4
  %7 = call %struct.thread* @PCPU_GET(i32 %6)
  %8 = icmp eq %struct.thread* %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = call i32 @MipsSaveCurFPState(%struct.thread* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(%struct.fpreg* %13, i32* %17, i32 8)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpuinfo, i32 0, i32 0), align 4
  %20 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %21 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @FIR_NUM, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  ret i32 0
}

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @MipsSaveCurFPState(%struct.thread*) #1

declare dso_local i32 @memcpy(%struct.fpreg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
