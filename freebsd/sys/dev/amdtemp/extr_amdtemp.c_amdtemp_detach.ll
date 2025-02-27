; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_softc = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtemp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdtemp_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.amdtemp_softc* @device_get_softc(i32 %5)
  store %struct.amdtemp_softc* %6, %struct.amdtemp_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @sysctl_remove_oid(i32* %29, i32 1, i32 0)
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %7

35:                                               ; preds = %7
  ret i32 0
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @sysctl_remove_oid(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
