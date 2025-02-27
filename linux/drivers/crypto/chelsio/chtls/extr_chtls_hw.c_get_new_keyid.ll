; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_get_new_keyid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_get_new_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.chtls_hws, %struct.chtls_dev*, %struct.net_device* }
%struct.chtls_hws = type { i32, i32 }
%struct.chtls_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TLS_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_sock*, i64)* @get_new_keyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_keyid(%struct.chtls_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.chtls_dev*, align 8
  %7 = alloca %struct.chtls_hws*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.chtls_sock* %0, %struct.chtls_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %11 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %14 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %13, i32 0, i32 1
  %15 = load %struct.chtls_dev*, %struct.chtls_dev** %14, align 8
  store %struct.chtls_dev* %15, %struct.chtls_dev** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.adapter* @netdev2adap(%struct.net_device* %16)
  store %struct.adapter* %17, %struct.adapter** %8, align 8
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %19 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %18, i32 0, i32 0
  store %struct.chtls_hws* %19, %struct.chtls_hws** %7, align 8
  %20 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %21 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %25 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %29 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @find_first_zero_bit(i32 %27, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %35 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %42 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__set_bit(i32 %40, i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @TLS_RX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.chtls_hws*, %struct.chtls_hws** %7, align 8
  %52 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.chtls_hws*, %struct.chtls_hws** %7, align 8
  %56 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  br label %63

62:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load %struct.chtls_dev*, %struct.chtls_dev** %6, align 8
  %65 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
