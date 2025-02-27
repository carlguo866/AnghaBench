; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_protocol_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_protocol_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_nat_protocol = type { i64 }

@nf_nat_lock = common dso_local global i32 0, align 4
@nf_nat_protos = common dso_local global i32** null, align 8
@nf_nat_unknown_protocol = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_protocol_register(%struct.nf_nat_protocol* %0) #0 {
  %2 = alloca %struct.nf_nat_protocol*, align 8
  %3 = alloca i32, align 4
  store %struct.nf_nat_protocol* %0, %struct.nf_nat_protocol** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock_bh(i32* @nf_nat_lock)
  %5 = load i32**, i32*** @nf_nat_protos, align 8
  %6 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %2, align 8
  %7 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32*, i32** %5, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @nf_nat_unknown_protocol
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32**, i32*** @nf_nat_protos, align 8
  %17 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %2, align 8
  %18 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %2, align 8
  %23 = call i32 @rcu_assign_pointer(i32* %21, %struct.nf_nat_protocol* %22)
  br label %24

24:                                               ; preds = %15, %12
  %25 = call i32 @spin_unlock_bh(i32* @nf_nat_lock)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.nf_nat_protocol*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
