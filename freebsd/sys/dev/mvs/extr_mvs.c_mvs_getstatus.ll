; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_getstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i64, i32 }

@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mvs_getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_getstatus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %5, align 8
  %9 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %10 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ATA_STATUS, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ATA_ALTSTAT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @ATA_INB(i32 %11, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %22 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ATA_S_BUSY, align 4
  %28 = load i32, i32* @ATA_S_DRQ, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATA_S_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %36 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @ATA_S_BUSY, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
