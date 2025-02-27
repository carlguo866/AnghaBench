; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i64 }

@ISDN_MAX_DRIVERS = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_6__* null, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @isdn_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_net_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ISDN_MAX_DRIVERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %9
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %19, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %18
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dev, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %32, %18
  br label %45

45:                                               ; preds = %44, %9
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %5

49:                                               ; preds = %5
  %50 = load i64, i64* @ETH_HLEN, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
