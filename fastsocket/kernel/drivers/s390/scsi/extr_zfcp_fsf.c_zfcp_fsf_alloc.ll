; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_fsf_req* (i32*)* @zfcp_fsf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_fsf_req* @zfcp_fsf_alloc(i32* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @likely(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.zfcp_fsf_req* @mempool_alloc(i32* %9, i32 %10)
  store %struct.zfcp_fsf_req* %11, %struct.zfcp_fsf_req** %4, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.zfcp_fsf_req* @kmalloc(i32 8, i32 %13)
  store %struct.zfcp_fsf_req* %14, %struct.zfcp_fsf_req** %4, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %17 = icmp ne %struct.zfcp_fsf_req* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %2, align 8
  br label %30

23:                                               ; preds = %15
  %24 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %25 = call i32 @memset(%struct.zfcp_fsf_req* %24, i32 0, i32 8)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  store %struct.zfcp_fsf_req* %29, %struct.zfcp_fsf_req** %2, align 8
  br label %30

30:                                               ; preds = %23, %22
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  ret %struct.zfcp_fsf_req* %31
}

declare dso_local i64 @likely(i32*) #1

declare dso_local %struct.zfcp_fsf_req* @mempool_alloc(i32*, i32) #1

declare dso_local %struct.zfcp_fsf_req* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.zfcp_fsf_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
