; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_no_linklocal_learn_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_no_linklocal_learn_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_bridge = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@BR_BOOLOPT_NO_LL_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @no_linklocal_learn_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_linklocal_learn_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_bridge*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.net_bridge* @to_bridge(%struct.device* %8)
  store %struct.net_bridge* %9, %struct.net_bridge** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %12 = load i32, i32* @BR_BOOLOPT_NO_LL_LEARN, align 4
  %13 = call i32 @br_boolopt_get(%struct.net_bridge* %11, i32 %12)
  %14 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  ret i32 %14
}

declare dso_local %struct.net_bridge* @to_bridge(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @br_boolopt_get(%struct.net_bridge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
