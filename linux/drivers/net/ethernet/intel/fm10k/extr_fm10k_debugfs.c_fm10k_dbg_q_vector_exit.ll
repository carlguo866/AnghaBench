; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_q_vector_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_q_vector_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_q_vector = type { i32*, %struct.fm10k_intfc* }
%struct.fm10k_intfc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_dbg_q_vector_exit(%struct.fm10k_q_vector* %0) #0 {
  %2 = alloca %struct.fm10k_q_vector*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  store %struct.fm10k_q_vector* %0, %struct.fm10k_q_vector** %2, align 8
  %4 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %4, i32 0, i32 1
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  store %struct.fm10k_intfc* %6, %struct.fm10k_intfc** %3, align 8
  %7 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %8 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %13 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @debugfs_remove_recursive(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %18 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
