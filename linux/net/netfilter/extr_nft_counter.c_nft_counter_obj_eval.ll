; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_counter.c_nft_counter_obj_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_counter.c_nft_counter_obj_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_regs = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_counter_percpu_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_counter_obj_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_counter_obj_eval(%struct.nft_object* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_counter_percpu_priv*, align 8
  store %struct.nft_object* %0, %struct.nft_object** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %9 = call %struct.nft_counter_percpu_priv* @nft_obj_data(%struct.nft_object* %8)
  store %struct.nft_counter_percpu_priv* %9, %struct.nft_counter_percpu_priv** %7, align 8
  %10 = load %struct.nft_counter_percpu_priv*, %struct.nft_counter_percpu_priv** %7, align 8
  %11 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %12 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %13 = call i32 @nft_counter_do_eval(%struct.nft_counter_percpu_priv* %10, %struct.nft_regs* %11, %struct.nft_pktinfo* %12)
  ret void
}

declare dso_local %struct.nft_counter_percpu_priv* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @nft_counter_do_eval(%struct.nft_counter_percpu_priv*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
