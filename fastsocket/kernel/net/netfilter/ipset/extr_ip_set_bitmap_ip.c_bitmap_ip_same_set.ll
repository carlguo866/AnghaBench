; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_same_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_same_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ip* }
%struct.bitmap_ip = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.ip_set*)* @bitmap_ip_same_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_same_set(%struct.ip_set* %0, %struct.ip_set* %1) #0 {
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.bitmap_ip*, align 8
  %6 = alloca %struct.bitmap_ip*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %3, align 8
  store %struct.ip_set* %1, %struct.ip_set** %4, align 8
  %7 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %8 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %7, i32 0, i32 0
  %9 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  store %struct.bitmap_ip* %9, %struct.bitmap_ip** %5, align 8
  %10 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %11 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %10, i32 0, i32 0
  %12 = load %struct.bitmap_ip*, %struct.bitmap_ip** %11, align 8
  store %struct.bitmap_ip* %12, %struct.bitmap_ip** %6, align 8
  %13 = load %struct.bitmap_ip*, %struct.bitmap_ip** %5, align 8
  %14 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %17 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.bitmap_ip*, %struct.bitmap_ip** %5, align 8
  %22 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %25 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.bitmap_ip*, %struct.bitmap_ip** %5, align 8
  %30 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %33 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.bitmap_ip*, %struct.bitmap_ip** %5, align 8
  %38 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %41 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br label %44

44:                                               ; preds = %36, %28, %20, %2
  %45 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %2 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
