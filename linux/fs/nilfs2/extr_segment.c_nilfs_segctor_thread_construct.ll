; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_thread_construct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_thread_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32 }
%struct.nilfs_transaction_info = type { i32 }

@NILFS_SC_UNCLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_thread_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_thread_construct(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_transaction_info, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nilfs_transaction_lock(i32 %8, %struct.nilfs_transaction_info* %5, i32 0)
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @nilfs_segctor_construct(%struct.nilfs_sc_info* %10, i32 %11)
  %13 = load i32, i32* @NILFS_SC_UNCLOSED, align 4
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %20 = call i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nilfs_transaction_unlock(i32 %24)
  ret void
}

declare dso_local i32 @nilfs_transaction_lock(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @nilfs_segctor_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_transaction_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
