; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_leave_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MCAST_NOT_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i32, i32)* @leave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leave_group(%struct.mcast_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @adjust_membership(%struct.mcast_group* %8, i32 %9, i32 -1)
  %11 = load i32, i32* %6, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %14 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %12
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %23 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @MCAST_NOT_MEMBER, align 4
  %33 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %34 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %31, %3
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @adjust_membership(%struct.mcast_group*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
