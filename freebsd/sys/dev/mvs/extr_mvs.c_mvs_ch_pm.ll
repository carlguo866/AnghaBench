; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i64, i32, i32 }

@SATA_SC = common dso_local global i32 0, align 4
@SATA_SC_SPM_MASK = common dso_local global i32 0, align 4
@SATA_SC_SPM_PARTIAL = common dso_local global i32 0, align 4
@SATA_SC_SPM_SLUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mvs_ch_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_ch_pm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_channel*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mvs_channel* @device_get_softc(i32 %8)
  store %struct.mvs_channel* %9, %struct.mvs_channel** %4, align 8
  %10 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %11 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %17 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SATA_SC, align 4
  %20 = call i32 @ATA_INL(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @SATA_SC_SPM_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %26 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @SATA_SC_SPM_PARTIAL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %15
  %34 = load i32, i32* @SATA_SC_SPM_SLUMBER, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %39 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SATA_SC, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ATA_OUTL(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %14
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
