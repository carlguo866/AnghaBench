; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain = type { i32, i32, %struct.nft_table* }
%struct.nft_table = type { i32 }

@nft_chain_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_chain*)* @nft_chain_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_chain_del(%struct.nft_chain* %0) #0 {
  %2 = alloca %struct.nft_chain*, align 8
  %3 = alloca %struct.nft_table*, align 8
  store %struct.nft_chain* %0, %struct.nft_chain** %2, align 8
  %4 = load %struct.nft_chain*, %struct.nft_chain** %2, align 8
  %5 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %4, i32 0, i32 2
  %6 = load %struct.nft_table*, %struct.nft_table** %5, align 8
  store %struct.nft_table* %6, %struct.nft_table** %3, align 8
  %7 = load %struct.nft_table*, %struct.nft_table** %3, align 8
  %8 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %7, i32 0, i32 0
  %9 = load %struct.nft_chain*, %struct.nft_chain** %2, align 8
  %10 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %9, i32 0, i32 1
  %11 = load i32, i32* @nft_chain_ht_params, align 4
  %12 = call i32 @rhltable_remove(i32* %8, i32* %10, i32 %11)
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.nft_chain*, %struct.nft_chain** %2, align 8
  %15 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %14, i32 0, i32 0
  %16 = call i32 @list_del_rcu(i32* %15)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
