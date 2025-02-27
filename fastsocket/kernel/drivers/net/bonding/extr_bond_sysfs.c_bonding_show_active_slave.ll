; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_active_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_active_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.bonding = type { %struct.TYPE_3__, i32, %struct.slave* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bonding_show_active_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_show_active_slave(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.slave*, align 8
  %8 = alloca %struct.bonding*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.bonding* @to_bond(%struct.device* %10)
  store %struct.bonding* %11, %struct.bonding** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.bonding*, %struct.bonding** %8, align 8
  %13 = getelementptr inbounds %struct.bonding, %struct.bonding* %12, i32 0, i32 1
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.bonding*, %struct.bonding** %8, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 2
  %17 = load %struct.slave*, %struct.slave** %16, align 8
  store %struct.slave* %17, %struct.slave** %7, align 8
  %18 = load %struct.bonding*, %struct.bonding** %8, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 1
  %20 = call i32 @read_unlock(i32* %19)
  %21 = load %struct.bonding*, %struct.bonding** %8, align 8
  %22 = getelementptr inbounds %struct.bonding, %struct.bonding* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @USES_PRIMARY(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.slave*, %struct.slave** %7, align 8
  %29 = icmp ne %struct.slave* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.slave*, %struct.slave** %7, align 8
  %33 = getelementptr inbounds %struct.slave, %struct.slave* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %30, %27, %3
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.bonding* @to_bond(%struct.device*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @USES_PRIMARY(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
