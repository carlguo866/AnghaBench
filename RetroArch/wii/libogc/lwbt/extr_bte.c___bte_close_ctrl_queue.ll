; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_close_ctrl_queue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_close_ctrl_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i32*, %struct.ctrl_req_t*, i32, i32 }
%struct.ctrl_req_t = type { %struct.ctrl_req_t*, i32 (i32, %struct.bte_pcb.0*, i32)*, i32, i32 }
%struct.bte_pcb.0 = type opaque

@ERR_CLSD = common dso_local global i32 0, align 4
@STATE_DISCONNECTED = common dso_local global i32 0, align 4
@bte_ctrl_reqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bte_pcb*)* @__bte_close_ctrl_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bte_close_ctrl_queue(%struct.bte_pcb* %0) #0 {
  %2 = alloca %struct.bte_pcb*, align 8
  %3 = alloca %struct.ctrl_req_t*, align 8
  store %struct.bte_pcb* %0, %struct.bte_pcb** %2, align 8
  br label %4

4:                                                ; preds = %41, %1
  %5 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %6 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %5, i32 0, i32 1
  %7 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %6, align 8
  %8 = icmp ne %struct.ctrl_req_t* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %4
  %10 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %10, i32 0, i32 1
  %12 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  store %struct.ctrl_req_t* %12, %struct.ctrl_req_t** %3, align 8
  %13 = load i32, i32* @ERR_CLSD, align 4
  %14 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %15 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @STATE_DISCONNECTED, align 4
  %17 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %18 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %20 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %19, i32 0, i32 1
  %21 = load i32 (i32, %struct.bte_pcb.0*, i32)*, i32 (i32, %struct.bte_pcb.0*, i32)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.bte_pcb.0*, i32)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %9
  %24 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %25 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %24, i32 0, i32 1
  %26 = load i32 (i32, %struct.bte_pcb.0*, i32)*, i32 (i32, %struct.bte_pcb.0*, i32)** %25, align 8
  %27 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %28 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %31 = bitcast %struct.bte_pcb* %30 to %struct.bte_pcb.0*
  %32 = load i32, i32* @ERR_CLSD, align 4
  %33 = call i32 %26(i32 %29, %struct.bte_pcb.0* %31, i32 %32)
  %34 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %35 = call i32 @btmemb_free(i32* @bte_ctrl_reqs, %struct.ctrl_req_t* %34)
  br label %41

36:                                               ; preds = %9
  %37 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %38 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @LWP_ThreadSignal(i32 %39)
  br label %41

41:                                               ; preds = %36, %23
  %42 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %43 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %42, i32 0, i32 0
  %44 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %43, align 8
  %45 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %46 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %45, i32 0, i32 1
  store %struct.ctrl_req_t* %44, %struct.ctrl_req_t** %46, align 8
  br label %4

47:                                               ; preds = %4
  %48 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %49 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

declare dso_local i32 @btmemb_free(i32*, %struct.ctrl_req_t*) #1

declare dso_local i32 @LWP_ThreadSignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
