; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_messaging.c_ecryptfs_msg_ctx_alloc_to_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_messaging.c_ecryptfs_msg_ctx_alloc_to_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_msg_ctx = type { i32, i32*, i32 }

@ecryptfs_msg_ctx_free_list = common dso_local global i32 0, align 4
@ECRYPTFS_MSG_CTX_STATE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecryptfs_msg_ctx_alloc_to_free(%struct.ecryptfs_msg_ctx* %0) #0 {
  %2 = alloca %struct.ecryptfs_msg_ctx*, align 8
  store %struct.ecryptfs_msg_ctx* %0, %struct.ecryptfs_msg_ctx** %2, align 8
  %3 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %3, i32 0, i32 2
  %5 = call i32 @list_move(i32* %4, i32* @ecryptfs_msg_ctx_free_list)
  %6 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @ECRYPTFS_MSG_CTX_STATE_FREE, align 4
  %19 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
