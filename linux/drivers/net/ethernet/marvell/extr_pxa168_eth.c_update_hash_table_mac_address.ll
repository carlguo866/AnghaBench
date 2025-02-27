; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_update_hash_table_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_update_hash_table_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_eth_private = type { i32 }

@HASH_DELETE = common dso_local global i32 0, align 4
@HASH_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168_eth_private*, i8*, i8*)* @update_hash_table_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_hash_table_mac_address(%struct.pxa168_eth_private* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pxa168_eth_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pxa168_eth_private* %0, %struct.pxa168_eth_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @HASH_DELETE, align 4
  %13 = call i32 @add_del_hash_entry(%struct.pxa168_eth_private* %10, i8* %11, i32 1, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %9, %3
  %15 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @HASH_ADD, align 4
  %18 = call i32 @add_del_hash_entry(%struct.pxa168_eth_private* %15, i8* %16, i32 1, i32 0, i32 %17)
  ret void
}

declare dso_local i32 @add_del_hash_entry(%struct.pxa168_eth_private*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
