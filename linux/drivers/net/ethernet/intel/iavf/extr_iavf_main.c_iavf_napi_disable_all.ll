; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_napi_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_napi_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_q_vector* }
%struct.iavf_q_vector = type { i32 }

@NONQ_VECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_napi_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_napi_disable_all(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_q_vector*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NONQ_VECS, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 1
  %18 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %18, i64 %20
  store %struct.iavf_q_vector* %21, %struct.iavf_q_vector** %4, align 8
  %22 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %23 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %22, i32 0, i32 0
  %24 = call i32 @napi_disable(i32* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %11

28:                                               ; preds = %11
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
