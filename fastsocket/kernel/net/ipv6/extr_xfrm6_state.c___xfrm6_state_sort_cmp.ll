; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c___xfrm6_state_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c___xfrm6_state_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPPROTO_AH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__xfrm6_state_sort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm6_state_sort_cmp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.xfrm_state*
  store %struct.xfrm_state* %6, %struct.xfrm_state** %4, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %20
    i32 132, label %20
  ]

11:                                               ; preds = %1
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPPROTO_AH, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

19:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %22

20:                                               ; preds = %1, %1
  store i32 4, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
