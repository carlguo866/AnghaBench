; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_host_put_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_host_put_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.scsi_cmnd = type { %struct.request* }
%struct.request = type { %struct.scsi_tgt_cmd* }
%struct.scsi_tgt_cmd = type { i32 }

@scsi_tgt_cmd_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_host_put_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.scsi_tgt_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 1
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %6, align 8
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %16, align 8
  store %struct.scsi_tgt_cmd* %17, %struct.scsi_tgt_cmd** %7, align 8
  %18 = load i32, i32* @scsi_tgt_cmd_cache, align 4
  %19 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %7, align 8
  %20 = call i32 @kmem_cache_free(i32 %18, %struct.scsi_tgt_cmd* %19)
  %21 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @__blk_put_request(%struct.request_queue* %26, %struct.request* %27)
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32 %31, i64 %32)
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = call i32 @__scsi_put_command(%struct.Scsi_Host* %34, %struct.scsi_cmnd* %35, i32* %37)
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.scsi_tgt_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__blk_put_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @__scsi_put_command(%struct.Scsi_Host*, %struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
