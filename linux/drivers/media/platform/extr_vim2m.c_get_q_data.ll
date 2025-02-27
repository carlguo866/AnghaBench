; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_get_q_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_get_q_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vim2m_q_data = type { i32 }
%struct.vim2m_ctx = type { %struct.vim2m_q_data* }

@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vim2m_q_data* (%struct.vim2m_ctx*, i32)* @get_q_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vim2m_q_data*, align 8
  %4 = alloca %struct.vim2m_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.vim2m_ctx* %0, %struct.vim2m_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 129, label %13
  ]

7:                                                ; preds = %2
  %8 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %8, i32 0, i32 0
  %10 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %9, align 8
  %11 = load i64, i64* @V4L2_M2M_SRC, align 8
  %12 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %10, i64 %11
  store %struct.vim2m_q_data* %12, %struct.vim2m_q_data** %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %14, i32 0, i32 0
  %16 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %15, align 8
  %17 = load i64, i64* @V4L2_M2M_DST, align 8
  %18 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %16, i64 %17
  store %struct.vim2m_q_data* %18, %struct.vim2m_q_data** %3, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.vim2m_q_data* null, %struct.vim2m_q_data** %3, align 8
  br label %20

20:                                               ; preds = %19, %13, %7
  %21 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %3, align 8
  ret %struct.vim2m_q_data* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
