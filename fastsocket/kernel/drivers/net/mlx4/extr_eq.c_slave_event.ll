; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_slave_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_slave_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mlx4_eqe = type { i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.mlx4_slave_event_eq }
%struct.mlx4_slave_event_eq = type { i32, i32, %struct.mlx4_eqe* }

@SLAVE_EVENT_EQ_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Master failed to generate an EQE for slave: %d. No free EQE on slave events queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, %struct.mlx4_eqe*)* @slave_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_event(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_eqe* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_eqe*, align 8
  %7 = alloca %struct.mlx4_priv*, align 8
  %8 = alloca %struct.mlx4_slave_event_eq*, align 8
  %9 = alloca %struct.mlx4_eqe*, align 8
  %10 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_eqe* %2, %struct.mlx4_eqe** %6, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %7, align 8
  %13 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store %struct.mlx4_slave_event_eq* %16, %struct.mlx4_slave_event_eq** %8, align 8
  %17 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %17, i32 0, i32 1
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %21, i32 0, i32 2
  %23 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %22, align 8
  %24 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SLAVE_EVENT_EQ_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %23, i64 %30
  store %struct.mlx4_eqe* %31, %struct.mlx4_eqe** %9, align 8
  %32 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SLAVE_EVENT_EQ_SIZE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = xor i32 %39, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %3
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mlx4_warn(%struct.mlx4_dev* %52, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %55, i32 0, i32 1
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %102

59:                                               ; preds = %3
  %60 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %9, align 8
  %61 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %6, align 8
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @memcpy(%struct.mlx4_eqe* %60, %struct.mlx4_eqe* %61, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %9, align 8
  %70 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = call i32 (...) @wmb()
  %72 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SLAVE_EVENT_EQ_SIZE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 128
  %82 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %85 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %94 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @queue_work(i32 %92, i32* %96)
  %98 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %98, i32 0, i32 1
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %59, %51
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.mlx4_eqe*, %struct.mlx4_eqe*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
