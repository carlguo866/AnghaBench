; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_tfd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_tfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_res }
%struct.ata_res = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mvs_channel = type { i32 }

@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_ERROR = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_HOB = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @mvs_tfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_tfd_read(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca %struct.ata_res*, align 8
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %5, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ata_res* %11, %struct.ata_res** %6, align 8
  %12 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %13 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATA_ALTSTAT, align 4
  %16 = call i8* @ATA_INB(i32 %14, i32 %15)
  %17 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %18 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %17, i32 0, i32 10
  store i8* %16, i8** %18, align 8
  %19 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %20 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_ERROR, align 4
  %23 = call i8* @ATA_INB(i32 %21, i32 %22)
  %24 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %25 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %27 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATA_DRIVE, align 4
  %30 = call i8* @ATA_INB(i32 %28, i32 %29)
  %31 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %32 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %34 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATA_CONTROL, align 4
  %37 = load i32, i32* @ATA_A_HOB, align 4
  %38 = call i32 @ATA_OUTB(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %40 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATA_COUNT, align 4
  %43 = call i8* @ATA_INB(i32 %41, i32 %42)
  %44 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %45 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %47 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_SECTOR, align 4
  %50 = call i8* @ATA_INB(i32 %48, i32 %49)
  %51 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %52 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATA_CYL_LSB, align 4
  %57 = call i8* @ATA_INB(i32 %55, i32 %56)
  %58 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %59 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %61 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATA_CYL_MSB, align 4
  %64 = call i8* @ATA_INB(i32 %62, i32 %63)
  %65 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %66 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %68 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATA_CONTROL, align 4
  %71 = call i32 @ATA_OUTB(i32 %69, i32 %70, i32 0)
  %72 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %73 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_COUNT, align 4
  %76 = call i8* @ATA_INB(i32 %74, i32 %75)
  %77 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %78 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %80 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATA_SECTOR, align 4
  %83 = call i8* @ATA_INB(i32 %81, i32 %82)
  %84 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %85 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATA_CYL_LSB, align 4
  %90 = call i8* @ATA_INB(i32 %88, i32 %89)
  %91 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %92 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %94 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATA_CYL_MSB, align 4
  %97 = call i8* @ATA_INB(i32 %95, i32 %96)
  %98 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %99 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i8* @ATA_INB(i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
