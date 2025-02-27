; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_allocate_request_vaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_allocate_request_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@NVME_REQUEST_VADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_request* (i8*, i32, i32, i8*)* @nvme_allocate_request_vaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvme_request*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = call %struct.nvme_request* @_nvme_allocate_request(i32 %10, i8* %11)
  store %struct.nvme_request* %12, %struct.nvme_request** %9, align 8
  %13 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %14 = icmp ne %struct.nvme_request* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* @NVME_REQUEST_VADDR, align 4
  %17 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %18 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %21 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %25 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %15, %4
  %27 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  ret %struct.nvme_request* %27
}

declare dso_local %struct.nvme_request* @_nvme_allocate_request(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
