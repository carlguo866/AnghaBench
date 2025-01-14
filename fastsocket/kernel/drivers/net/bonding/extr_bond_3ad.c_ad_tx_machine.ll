; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_tx_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_tx_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32 }

@AD_PORT_LACP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Sent LACPDU on port %d\0A\00", align 1
@ad_ticks_per_sec = common dso_local global i32 0, align 4
@AD_MAX_TX_IN_SECOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @ad_tx_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_tx_machine(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.port*, %struct.port** %2, align 8
  %4 = getelementptr inbounds %struct.port, %struct.port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %7
  %14 = load %struct.port*, %struct.port** %2, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AD_PORT_LACP_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = call i32 @__update_lacpdu_from_port(%struct.port* %26)
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = call i64 @ad_lacpdu_send(%struct.port* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.port*, %struct.port** %2, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.port*, %struct.port** %2, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %25
  br label %39

39:                                               ; preds = %38, %18, %13
  %40 = load i32, i32* @ad_ticks_per_sec, align 4
  %41 = load i32, i32* @AD_MAX_TX_IN_SECOND, align 4
  %42 = sdiv i32 %40, %41
  %43 = load %struct.port*, %struct.port** %2, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %7, %1
  ret void
}

declare dso_local i32 @__update_lacpdu_from_port(%struct.port*) #1

declare dso_local i64 @ad_lacpdu_send(%struct.port*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
