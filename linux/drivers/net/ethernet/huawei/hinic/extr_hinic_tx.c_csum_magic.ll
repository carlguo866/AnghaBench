; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_csum_magic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_csum_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hinic_l3 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.hinic_l3*, i16)* @csum_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csum_magic(%union.hinic_l3* %0, i16 zeroext %1) #0 {
  %3 = alloca %union.hinic_l3*, align 8
  %4 = alloca i16, align 2
  store %union.hinic_l3* %0, %union.hinic_l3** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %union.hinic_l3*, %union.hinic_l3** %3, align 8
  %6 = bitcast %union.hinic_l3* %5 to %struct.TYPE_3__**
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %union.hinic_l3*, %union.hinic_l3** %3, align 8
  %13 = bitcast %union.hinic_l3* %12 to %struct.TYPE_3__**
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %union.hinic_l3*, %union.hinic_l3** %3, align 8
  %18 = bitcast %union.hinic_l3* %17 to %struct.TYPE_3__**
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @csum_tcpudp_magic(i32 %16, i32 %21, i32 0, i16 zeroext %22, i32 0)
  br label %35

24:                                               ; preds = %2
  %25 = load %union.hinic_l3*, %union.hinic_l3** %3, align 8
  %26 = bitcast %union.hinic_l3* %25 to %struct.TYPE_4__**
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %union.hinic_l3*, %union.hinic_l3** %3, align 8
  %30 = bitcast %union.hinic_l3* %29 to %struct.TYPE_4__**
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i16, i16* %4, align 2
  %34 = call i32 @csum_ipv6_magic(i32* %28, i32* %32, i32 0, i16 zeroext %33, i32 0)
  br label %35

35:                                               ; preds = %24, %11
  %36 = phi i32 [ %23, %11 ], [ %34, %24 ]
  ret i32 %36
}

declare dso_local i32 @csum_tcpudp_magic(i32, i32, i32, i16 zeroext, i32) #1

declare dso_local i32 @csum_ipv6_magic(i32*, i32*, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
