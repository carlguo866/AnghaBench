; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_for_aux_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_for_aux_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32, i32, i32 }

@KBDS_ANY_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@PSM_ACK = common dso_local global i32 0, align 4
@PSM_RESEND = common dso_local global i32 0, align 4
@PSM_RESET_FAIL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDC_DELAYTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbdc_softc*)* @wait_for_aux_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_aux_ack(%struct.atkbdc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  %7 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %17 = call i32 @read_status(%struct.atkbdc_softc* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @KBDS_ANY_BUFFER_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load i32, i32* @KBDD_DELAYTIME, align 4
  %23 = call i32 @DELAY(i32 %22)
  %24 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %25 = call i32 @read_data(%struct.atkbdc_softc* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PSM_ACK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PSM_RESEND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PSM_RESET_FAIL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35, %31
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %39
  %46 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @addq(i32* %47, i32 %48)
  br label %62

50:                                               ; preds = %21
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @addq(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %45
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* @KBDC_DELAYTIME, align 4
  %65 = call i32 @DELAY(i32 %64)
  br label %11

66:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @read_status(%struct.atkbdc_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_data(%struct.atkbdc_softc*) #1

declare dso_local i32 @addq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
