; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ah6.c_ah6_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ah6.c_ah6_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ah_data* }
%struct.ah_data = type { i32, %struct.ah_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @ah6_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah6_destroy(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.ah_data*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %4, i32 0, i32 0
  %6 = load %struct.ah_data*, %struct.ah_data** %5, align 8
  store %struct.ah_data* %6, %struct.ah_data** %3, align 8
  %7 = load %struct.ah_data*, %struct.ah_data** %3, align 8
  %8 = icmp ne %struct.ah_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.ah_data*, %struct.ah_data** %3, align 8
  %12 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %11, i32 0, i32 1
  %13 = load %struct.ah_data*, %struct.ah_data** %12, align 8
  %14 = call i32 @kfree(%struct.ah_data* %13)
  %15 = load %struct.ah_data*, %struct.ah_data** %3, align 8
  %16 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @crypto_free_hash(i32 %17)
  %19 = load %struct.ah_data*, %struct.ah_data** %3, align 8
  %20 = call i32 @kfree(%struct.ah_data* %19)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @kfree(%struct.ah_data*) #1

declare dso_local i32 @crypto_free_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
