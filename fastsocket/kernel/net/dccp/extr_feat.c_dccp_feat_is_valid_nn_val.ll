; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_is_valid_nn_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_is_valid_nn_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCCPF_ACK_RATIO_MAX = common dso_local global i32 0, align 4
@DCCPF_SEQ_WMIN = common dso_local global i32 0, align 4
@DCCPF_SEQ_WMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dccp_feat_is_valid_nn_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_is_valid_nn_val(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 128, label %12
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DCCPF_ACK_RATIO_MAX, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DCCPF_SEQ_WMIN, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DCCPF_SEQ_WMAX, align 4
  %19 = icmp sle i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
