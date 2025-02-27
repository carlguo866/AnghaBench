; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_dump_scbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_dump_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"(CTRL 0x%x ID 0x%x N 0x%x N2 0x%x SG 0x%x, RSG 0x%x)\0A\00", align 1
@SCB_CONTROL = common dso_local global i32 0, align 4
@SCB_SCSIID = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_NEXT2 = common dso_local global i32 0, align 4
@SCB_SGPTR = common dso_local global i32 0, align 4
@SCB_RESIDUAL_SGPTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_dump_scbs(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = call i32 @ahd_save_modes(%struct.ahd_softc* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %9 = load i32, i32* @AHD_MODE_SCSI, align 4
  %10 = load i32, i32* @AHD_MODE_SCSI, align 4
  %11 = call i32 @ahd_set_modes(%struct.ahd_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %43, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AHD_SCB_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i32, i32* @SCB_CONTROL, align 4
  %26 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %24, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = load i32, i32* @SCB_SCSIID, align 4
  %29 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %27, i32 %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = load i32, i32* @SCB_NEXT, align 4
  %32 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %30, i32 %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = load i32, i32* @SCB_NEXT2, align 4
  %35 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %33, i32 %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = load i32, i32* @SCB_SGPTR, align 4
  %38 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %36, i32 %37)
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %40 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %41 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %39, i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %18
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %14

46:                                               ; preds = %14
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %48, i32 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ahd_restore_modes(%struct.ahd_softc* %51, i32 %52)
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inl_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
