; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_send_noreply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_send_noreply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_request_send_noreply(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %8 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %9 = call i32 @fuse_request_send_nowait(%struct.fuse_conn* %7, %struct.fuse_req* %8)
  ret void
}

declare dso_local i32 @fuse_request_send_nowait(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
