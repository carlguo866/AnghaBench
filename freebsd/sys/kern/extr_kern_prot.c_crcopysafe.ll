; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crcopysafe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crcopysafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.ucred* }
%struct.ucred = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @crcopysafe(%struct.proc* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load %struct.ucred*, %struct.ucred** %11, align 8
  store %struct.ucred* %12, %struct.ucred** %5, align 8
  br label %13

13:                                               ; preds = %21, %2
  %14 = load %struct.ucred*, %struct.ucred** %4, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ucred*, %struct.ucred** %5, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.ucred*, %struct.ucred** %5, align 8
  %23 = getelementptr inbounds %struct.ucred, %struct.ucred* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.proc*, %struct.proc** %3, align 8
  %26 = call i32 @PROC_UNLOCK(%struct.proc* %25)
  %27 = load %struct.ucred*, %struct.ucred** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @crextend(%struct.ucred* %27, i32 %28)
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = call i32 @PROC_LOCK(%struct.proc* %30)
  %32 = load %struct.proc*, %struct.proc** %3, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load %struct.ucred*, %struct.ucred** %33, align 8
  store %struct.ucred* %34, %struct.ucred** %5, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.ucred*, %struct.ucred** %4, align 8
  %37 = load %struct.ucred*, %struct.ucred** %5, align 8
  %38 = call i32 @crcopy(%struct.ucred* %36, %struct.ucred* %37)
  %39 = load %struct.ucred*, %struct.ucred** %5, align 8
  ret %struct.ucred* %39
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crextend(%struct.ucred*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @crcopy(%struct.ucred*, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
