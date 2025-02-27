; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_generate32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_generate32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_lfsr_generate32(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @VALID_LFSR(%struct.TYPE_6__* %9)
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @VALID_LFSR(%struct.TYPE_6__* %12)
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @lfsr_skipgenerate(%struct.TYPE_6__* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @lfsr_skipgenerate(%struct.TYPE_6__* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %29, %30
  ret i32 %31
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_LFSR(%struct.TYPE_6__*) #1

declare dso_local i32 @lfsr_skipgenerate(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
