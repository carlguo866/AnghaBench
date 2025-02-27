; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_flag_test_and_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_flag_test_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*, i64)* @con_flag_test_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_flag_test_and_set(%struct.ceph_connection* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca i64, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @con_flag_valid(i64 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 0
  %14 = call i32 @test_and_set_bit(i64 %11, i32* %13)
  ret i32 %14
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @con_flag_valid(i64) #1

declare dso_local i32 @test_and_set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
