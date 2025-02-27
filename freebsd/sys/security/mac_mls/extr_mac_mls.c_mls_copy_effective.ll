; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_copy_effective.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_copy_effective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_mls = type { i32, i32 }

@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mls_copy_effective: labelfrom not effective\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_mls*, %struct.mac_mls*)* @mls_copy_effective to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mls_copy_effective(%struct.mac_mls* %0, %struct.mac_mls* %1) #0 {
  %3 = alloca %struct.mac_mls*, align 8
  %4 = alloca %struct.mac_mls*, align 8
  store %struct.mac_mls* %0, %struct.mac_mls** %3, align 8
  store %struct.mac_mls* %1, %struct.mac_mls** %4, align 8
  %5 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %6 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %14 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mac_mls*, %struct.mac_mls** %4, align 8
  %17 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %19 = load %struct.mac_mls*, %struct.mac_mls** %4, align 8
  %20 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
