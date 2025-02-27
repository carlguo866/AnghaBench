; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_q_vector = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_100K_ITR = common dso_local global i32 0, align 4
@IXGBE_20K_ITR = common dso_local global i32 0, align 4
@IXGBE_8K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_q_vector*)* @ixgbevf_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_set_itr(%struct.ixgbevf_q_vector* %0) #0 {
  %2 = alloca %struct.ixgbevf_q_vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %2, align 8
  %5 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %9 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %9, i32 0, i32 1
  %11 = call i32 @ixgbevf_update_itr(%struct.ixgbevf_q_vector* %8, %struct.TYPE_2__* %10)
  %12 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %13 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %13, i32 0, i32 2
  %15 = call i32 @ixgbevf_update_itr(%struct.ixgbevf_q_vector* %12, %struct.TYPE_2__* %14)
  %16 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @max(i32 %19, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %31 [
    i32 128, label %26
    i32 129, label %28
    i32 130, label %30
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* @IXGBE_100K_ITR, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @IXGBE_20K_ITR, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %1, %30
  %32 = load i32, i32* @IXGBE_8K_ITR, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %26
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 10, %40
  %42 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 9, %46
  %48 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %45, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %57 = call i32 @ixgbevf_write_eitr(%struct.ixgbevf_q_vector* %56)
  br label %58

58:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @ixgbevf_update_itr(%struct.ixgbevf_q_vector*, %struct.TYPE_2__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ixgbevf_write_eitr(%struct.ixgbevf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
