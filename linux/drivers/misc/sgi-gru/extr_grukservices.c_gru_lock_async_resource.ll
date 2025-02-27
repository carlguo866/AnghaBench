; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_lock_async_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_lock_async_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i8*, i8* }

@GRU_HANDLE_STRIDE = common dso_local global i32 0, align 4
@GRU_NUM_KERNEL_DSR_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_lock_async_resource(i64 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.gru_blade_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.gru_blade_state* @ASYNC_HAN_TO_BS(i64 %10)
  store %struct.gru_blade_state* %11, %struct.gru_blade_state** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ASYNC_HAN_TO_BID(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @gru_lock_kernel_context(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @uv_blade_nr_possible_cpus(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.gru_blade_state*, %struct.gru_blade_state** %7, align 8
  %22 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GRU_HANDLE_STRIDE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i8**, i8*** %6, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.gru_blade_state*, %struct.gru_blade_state** %7, align 8
  %35 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GRU_NUM_KERNEL_DSR_BYTES, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %36, i64 %40
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %33, %30
  ret void
}

declare dso_local %struct.gru_blade_state* @ASYNC_HAN_TO_BS(i64) #1

declare dso_local i32 @ASYNC_HAN_TO_BID(i64) #1

declare dso_local i32 @gru_lock_kernel_context(i32) #1

declare dso_local i32 @uv_blade_nr_possible_cpus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
