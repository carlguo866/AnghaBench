; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_ds_var_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_ds_var_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_info = type { i32 }
%struct.ds_cap_state = type { i32 }
%struct.ds_data = type { i32 }
%struct.ds_var_resp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DS_VAR_SET_RESP = common dso_local global i64 0, align 8
@DS_VAR_DELETE_RESP = common dso_local global i64 0, align 8
@ds_var_response = common dso_local global i32 0, align 4
@ds_var_doorbell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_info*, %struct.ds_cap_state*, i8*, i32)* @ds_var_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_var_data(%struct.ds_info* %0, %struct.ds_cap_state* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ds_info*, align 8
  %6 = alloca %struct.ds_cap_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ds_data*, align 8
  %10 = alloca %struct.ds_var_resp*, align 8
  store %struct.ds_info* %0, %struct.ds_info** %5, align 8
  store %struct.ds_cap_state* %1, %struct.ds_cap_state** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ds_data*
  store %struct.ds_data* %12, %struct.ds_data** %9, align 8
  %13 = load %struct.ds_data*, %struct.ds_data** %9, align 8
  %14 = getelementptr inbounds %struct.ds_data, %struct.ds_data* %13, i64 1
  %15 = bitcast %struct.ds_data* %14 to %struct.ds_var_resp*
  store %struct.ds_var_resp* %15, %struct.ds_var_resp** %10, align 8
  %16 = load %struct.ds_var_resp*, %struct.ds_var_resp** %10, align 8
  %17 = getelementptr inbounds %struct.ds_var_resp, %struct.ds_var_resp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DS_VAR_SET_RESP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.ds_var_resp*, %struct.ds_var_resp** %10, align 8
  %24 = getelementptr inbounds %struct.ds_var_resp, %struct.ds_var_resp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DS_VAR_DELETE_RESP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %22, %4
  %31 = load %struct.ds_var_resp*, %struct.ds_var_resp** %10, align 8
  %32 = getelementptr inbounds %struct.ds_var_resp, %struct.ds_var_resp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* @ds_var_response, align 4
  %34 = call i32 (...) @wmb()
  store i32 1, i32* @ds_var_doorbell, align 4
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
