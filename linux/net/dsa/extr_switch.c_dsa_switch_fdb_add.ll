; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32, i32)* }
%struct.dsa_notifier_fdb_info = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_notifier_fdb_info*)* @dsa_switch_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_fdb_add(%struct.dsa_switch* %0, %struct.dsa_notifier_fdb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_notifier_fdb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_notifier_fdb_info* %1, %struct.dsa_notifier_fdb_info** %5, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %8 = load %struct.dsa_notifier_fdb_info*, %struct.dsa_notifier_fdb_info** %5, align 8
  %9 = getelementptr inbounds %struct.dsa_notifier_fdb_info, %struct.dsa_notifier_fdb_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dsa_notifier_fdb_info*, %struct.dsa_notifier_fdb_info** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_notifier_fdb_info, %struct.dsa_notifier_fdb_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dsa_towards_port(%struct.dsa_switch* %7, i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dsa_switch*, i32, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.dsa_switch*, i32, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dsa_switch*, i32, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i32)** %28, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dsa_notifier_fdb_info*, %struct.dsa_notifier_fdb_info** %5, align 8
  %33 = getelementptr inbounds %struct.dsa_notifier_fdb_info, %struct.dsa_notifier_fdb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dsa_notifier_fdb_info*, %struct.dsa_notifier_fdb_info** %5, align 8
  %36 = getelementptr inbounds %struct.dsa_notifier_fdb_info, %struct.dsa_notifier_fdb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %29(%struct.dsa_switch* %30, i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %24, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dsa_towards_port(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
