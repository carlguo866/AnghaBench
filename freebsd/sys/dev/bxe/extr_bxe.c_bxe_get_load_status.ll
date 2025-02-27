; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_load_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_load_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@BXE_PATH1_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BXE_PATH0_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BXE_PATH1_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BXE_PATH0_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BXE_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Old value for GLOB_REG=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Load mask engine %d = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_get_load_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_load_status(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BXE_PATH1_LOAD_CNT_MASK, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BXE_PATH0_LOAD_CNT_MASK, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @BXE_PATH1_LOAD_CNT_SHIFT, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @BXE_PATH0_LOAD_CNT_SHIFT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = load i32, i32* @BXE_RECOVERY_GLOB_REG, align 4
  %26 = call i32 @REG_RD(%struct.bxe_softc* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = load i32, i32* @DBG_LOAD, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %27, i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = load i32, i32* @DBG_LOAD, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %36, i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
