; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_enable_collecting_distributing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_enable_collecting_distributing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Enabling port %d (LAG %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*, i32*)* @ad_enable_collecting_distributing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_enable_collecting_distributing(%struct.port* %0, i32* %1) #0 {
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32*, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.port*, %struct.port** %3, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.port*, %struct.port** %3, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.port*, %struct.port** %3, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.port*, %struct.port** %3, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @slave_dbg(i32 %18, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.port*, %struct.port** %3, align 8
  %34 = call i32 @__enable_port(%struct.port* %33)
  %35 = load i32*, i32** %4, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @__enable_port(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
