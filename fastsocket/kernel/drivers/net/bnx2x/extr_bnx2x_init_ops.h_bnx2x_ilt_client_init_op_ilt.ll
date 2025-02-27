; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_client_init_op_ilt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_client_init_op_ilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_ilt = type { i32 }
%struct.ilt_client_info = type { i32, i32, i32 }

@ILT_CLIENT_SKIP_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_ilt*, %struct.ilt_client_info*, i32)* @bnx2x_ilt_client_init_op_ilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ilt_client_init_op_ilt(%struct.bnx2x* %0, %struct.bnx2x_ilt* %1, %struct.ilt_client_info* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_ilt*, align 8
  %7 = alloca %struct.ilt_client_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_ilt* %1, %struct.bnx2x_ilt** %6, align 8
  store %struct.ilt_client_info* %2, %struct.ilt_client_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ilt_client_info*, %struct.ilt_client_info** %7, align 8
  %11 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ILT_CLIENT_SKIP_INIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %44

17:                                               ; preds = %4
  %18 = load %struct.ilt_client_info*, %struct.ilt_client_info** %7, align 8
  %19 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %33, %17
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ilt_client_info*, %struct.ilt_client_info** %7, align 8
  %24 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @bnx2x_ilt_line_init_op(%struct.bnx2x* %28, %struct.bnx2x_ilt* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = load %struct.ilt_client_info*, %struct.ilt_client_info** %7, align 8
  %39 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %6, align 8
  %40 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @bnx2x_ilt_boundry_init_op(%struct.bnx2x* %37, %struct.ilt_client_info* %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @bnx2x_ilt_line_init_op(%struct.bnx2x*, %struct.bnx2x_ilt*, i32, i32) #1

declare dso_local i32 @bnx2x_ilt_boundry_init_op(%struct.bnx2x*, %struct.ilt_client_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
