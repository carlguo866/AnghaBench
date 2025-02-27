; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_clock_update_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_clock_update_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@SDMMC = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sdmmc_host_clock_update_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_host_clock_update_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = bitcast { i64, i32 }* %5 to i8*
  %16 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sdmmc_host_start_command(i32 %14, i64 %18, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %13, %30
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SDMMC, i32 0, i32 1, i32 0), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SDMMC, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* %4, align 4
  br label %31

26:                                               ; preds = %22
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SDMMC, i32 0, i32 0, i32 0), align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %31

30:                                               ; preds = %26
  br label %22

31:                                               ; preds = %29, %25
  br label %10

32:                                               ; preds = %10
  ret void
}

declare dso_local i32 @sdmmc_host_start_command(i32, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
