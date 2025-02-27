; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_stats_refresh_interval_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_stats_refresh_interval_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lb_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_stats_refresh_interval_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_stats_refresh_interval_set(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.team_gsetter_ctx*, align 8
  %6 = alloca %struct.lb_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %5, align 8
  %8 = load %struct.team*, %struct.team** %4, align 8
  %9 = call %struct.lb_priv* @get_lb_priv(%struct.team* %8)
  store %struct.lb_priv* %9, %struct.lb_priv** %6, align 8
  %10 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %15 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %26 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %34 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = call i32 @schedule_delayed_work(i32* %37, i32 0)
  br label %46

39:                                               ; preds = %23
  %40 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %41 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @cancel_delayed_work(i32* %44)
  br label %46

46:                                               ; preds = %39, %32
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
