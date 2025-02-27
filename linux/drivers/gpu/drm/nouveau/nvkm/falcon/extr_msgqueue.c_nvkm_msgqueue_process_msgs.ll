; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_process_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_process_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }

@MSG_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_msgqueue_process_msgs(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %4, align 8
  %9 = load i32, i32* @MSG_BUF_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nvkm_msgqueue_hdr*
  store %struct.nvkm_msgqueue_hdr* %14, %struct.nvkm_msgqueue_hdr** %7, align 8
  %15 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %21 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %22 = call i32 @msgqueue_handle_init_msg(%struct.nvkm_msgqueue* %20, %struct.nvkm_msgqueue_hdr* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %19
  br label %41

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %32 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %33 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %34 = call i64 @msg_queue_read(%struct.nvkm_msgqueue* %31, %struct.nvkm_msgqueue_queue* %32, %struct.nvkm_msgqueue_hdr* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %38 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %7, align 8
  %39 = call i32 @msgqueue_msg_handle(%struct.nvkm_msgqueue* %37, %struct.nvkm_msgqueue_hdr* %38)
  br label %30

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @msgqueue_handle_init_msg(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*) #2

declare dso_local i64 @msg_queue_read(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_hdr*) #2

declare dso_local i32 @msgqueue_msg_handle(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
