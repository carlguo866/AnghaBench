; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_net_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_net_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@CFG_NET_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_net_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_net_stats(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipw_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ipw_priv* %9, %struct.ipw_priv** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CFG_NET_STATS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 49, i32 48
  %19 = trunc i32 %18 to i8
  %20 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %19)
  ret i32 %20
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
