; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec.c_FM_MACSEC_SetException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec.c_FM_MACSEC_SetException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64, i32, i32)* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_MACSEC_SetException(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = load i32, i32* @E_INVALID_HANDLE, align 4
  %13 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_3__* %11, i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %15, align 8
  %17 = icmp ne i32 (i64, i32, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(i64 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @MINOR, align 4
  %28 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %29 = load i32, i32* @NO_MSG, align 4
  %30 = call i32 @RETURN_ERROR(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
