; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_hash_change_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_hash_change_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvlan_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macvlan_dev*, i8*)* @macvlan_hash_change_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvlan_hash_change_addr(%struct.macvlan_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.macvlan_dev*, align 8
  %4 = alloca i8*, align 8
  store %struct.macvlan_dev* %0, %struct.macvlan_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %6 = call i32 @macvlan_hash_del(%struct.macvlan_dev* %5, i32 1)
  %7 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %8 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = call i32 @memcpy(i32 %11, i8* %12, i32 %13)
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %16 = call i32 @macvlan_hash_add(%struct.macvlan_dev* %15)
  ret void
}

declare dso_local i32 @macvlan_hash_del(%struct.macvlan_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @macvlan_hash_add(%struct.macvlan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
