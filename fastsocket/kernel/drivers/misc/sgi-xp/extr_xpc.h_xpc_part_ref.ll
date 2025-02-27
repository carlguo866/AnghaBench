; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc.h_xpc_part_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc.h_xpc_part_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32 }

@XPC_P_SS_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_part_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_part_ref(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %4 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %4, i32 0, i32 1
  %6 = call i32 @atomic_inc(i32* %5)
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XPC_P_SS_SETUP, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %17 = call i32 @xpc_part_deref(%struct.xpc_partition* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
