; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { %struct.TYPE_4__*, %struct.request** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*, %struct.request*)* @scm_request_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_set(%struct.scm_request* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.scm_request*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.scm_request* %0, %struct.scm_request** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %7 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %6, i32 0, i32 1
  %8 = load %struct.request**, %struct.request*** %7, align 8
  %9 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %10 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.request*, %struct.request** %8, i64 %14
  store %struct.request* %5, %struct.request** %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
