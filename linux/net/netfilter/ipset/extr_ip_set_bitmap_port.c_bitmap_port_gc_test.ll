; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_gc_test.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_gc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bitmap_port*, i64)* @bitmap_port_gc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_gc_test(i32 %0, %struct.bitmap_port* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_port*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bitmap_port* %1, %struct.bitmap_port** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bitmap_port*, %struct.bitmap_port** %5, align 8
  %9 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
